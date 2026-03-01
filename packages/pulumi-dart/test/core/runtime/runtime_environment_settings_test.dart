import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('Settings.fromEnvironment', () {
    test(
      'uses Pulumi runtime env keys when Node compatibility keys are absent',
      () {
        final settings = Settings.fromEnvironment({
          'PULUMI_PROJECT': 'pulumi-project',
          'PULUMI_STACK': 'dev',
          'PULUMI_ORGANIZATION': 'acme',
          'PULUMI_MONITOR': '127.0.0.1:7777',
          'PULUMI_ENGINE': '127.0.0.1:8888',
        });

        expect(settings.options.project, equals('pulumi-project'));
        expect(settings.options.stack, equals('dev'));
        expect(settings.options.organization, equals('acme'));
        expect(settings.options.monitorAddr, equals('127.0.0.1:7777'));
        expect(settings.options.engineAddr, equals('127.0.0.1:8888'));
      },
    );

    test('prefers Node compatibility env keys when both sets are present', () {
      final settings = Settings.fromEnvironment({
        NodeEnvKeys.project: 'node-project',
        NodeEnvKeys.stack: 'node-stack',
        NodeEnvKeys.organization: 'node-org',
        NodeEnvKeys.monitorAddr: '127.0.0.1:9999',
        NodeEnvKeys.engineAddr: '127.0.0.1:10000',
        'PULUMI_PROJECT': 'pulumi-project',
        'PULUMI_STACK': 'pulumi-stack',
        'PULUMI_ORGANIZATION': 'pulumi-org',
        'PULUMI_MONITOR': '127.0.0.1:7777',
        'PULUMI_ENGINE': '127.0.0.1:8888',
      });

      expect(settings.options.project, equals('node-project'));
      expect(settings.options.stack, equals('node-stack'));
      expect(settings.options.organization, equals('node-org'));
      expect(settings.options.monitorAddr, equals('127.0.0.1:9999'));
      expect(settings.options.engineAddr, equals('127.0.0.1:10000'));
    });

    test(
      'falls back to deterministic defaults when project and stack are unset',
      () {
        final settings = Settings.fromEnvironment({});

        expect(settings.options.project, equals('project'));
        expect(settings.options.stack, equals('stack'));
      },
    );
  });
}
