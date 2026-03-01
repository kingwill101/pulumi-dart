import 'dart:convert';
import 'dart:io';

import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

WriteableOptions _cloneOptions(WriteableOptions options) {
  return WriteableOptions(
    project: options.project,
    stack: options.stack,
    parallel: options.parallel,
    engineAddr: options.engineAddr,
    monitorAddr: options.monitorAddr,
    dryRun: options.dryRun,
    testModeEnabled: options.testModeEnabled,
    queryMode: options.queryMode,
    legacyApply: options.legacyApply,
    cacheDynamicProviders: options.cacheDynamicProviders,
    organization: options.organization,
    maximumProcessListeners: options.maximumProcessListeners,
    syncDir: options.syncDir,
  );
}

void main() {
  group('runtime settings', () {
    late Store store;
    late WriteableOptions originalOptions;
    late Map<String, String> originalConfig;

    setUp(() {
      store = getGlobalStore();
      originalOptions = _cloneOptions(store.settings.options);
      originalConfig = Map<String, String>.from(store.config);
      setAllConfig({});
    });

    tearDown(() {
      store.settings.options = originalOptions;
      store.config
        ..clear()
        ..addAll(originalConfig);
    });

    test('runtime options and config are updated through shared state', () {
      store.settings.options.organization = 'TestOrg';
      store.settings.options.project = 'TestProject';
      store.settings.options.stack = 'TestStack';
      store.settings.options.dryRun = true;
      store.settings.options.cacheDynamicProviders = true;

      setConfig('k', 'v');

      expect(store.settings.options.organization, equals('TestOrg'));
      expect(store.settings.options.project, equals('TestProject'));
      expect(store.settings.options.stack, equals('TestStack'));
      expect(store.settings.options.dryRun, isTrue);
      expect(store.settings.options.cacheDynamicProviders, isTrue);
      expect(getConfig('k'), equals('v'));
    });

    test('setAllConfig cleans namespaced keys in shared config payload', () {
      setAllConfig({
        'pkg:config:token': 'abc123',
        'pkg:plain': 'x',
        'other:config:region': 'us-west-2',
      });

      final parsed = allConfig();
      expect(parsed, containsPair('pkg:token', 'abc123'));
      expect(parsed, containsPair('pkg:plain', 'x'));
      expect(parsed, containsPair('other:region', 'us-west-2'));
      expect(parsed.keys, isNot(contains('pkg:config:token')));
      expect(parsed.keys, isNot(contains('other:config:region')));

      final raw = store.config[configEnvKey];
      expect(raw, isNotNull);
      final decoded = jsonDecode(raw!) as Map<String, dynamic>;
      expect(decoded, containsPair('pkg:token', 'abc123'));
      expect(decoded, containsPair('other:region', 'us-west-2'));
      expect(decoded.keys, isNot(contains('pkg:config:token')));
      expect(decoded.keys, isNot(contains('other:config:region')));
    });

    test('setConfig updates existing config entry deterministically', () {
      setAllConfig({'pkg:config:token': 'v1', 'pkg:other': 'keep'});

      setConfig('pkg:config:token', 'v2');
      setConfig('pkg:config:token', 'v3');

      expect(allConfig(), equals({'pkg:token': 'v3', 'pkg:other': 'keep'}));
    });

    test(
      'cacheDynamicProviders uses environment default and supports explicit updates',
      () {
        final expectedDefault =
            Platform.environment[NodeEnvKeys.cacheDynamicProviders] != 'false';
        expect(
          store.settings.options.cacheDynamicProviders,
          equals(expectedDefault),
        );

        store.settings.options.cacheDynamicProviders = false;
        expect(store.settings.options.cacheDynamicProviders, isFalse);

        store.settings.options.cacheDynamicProviders = true;
        expect(store.settings.options.cacheDynamicProviders, isTrue);
      },
    );
  });
}
