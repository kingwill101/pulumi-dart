import 'package:pulumi/pulumi.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  group('output helper', () {
    test('stringLength counts user-perceived Unicode characters', () {
      expect(stringLength('👾-🕹️'), equals(3));
    });

    test('list builtins wrap indexes and enforce zero-or-one values', () {
      expect(listElement(['a', 'b', 'c'], 4), equals('b'));
      expect(listElement(['a', 'b', 'c'], -1), equals('c'));
      expect(singleOrNone(<String>[]), isNull);
      expect(singleOrNone(['only']), equals('only'));
      expect(() => singleOrNone(['a', 'b']), throwsStateError);
    });

    test('directory builtins return absolute paths', () {
      expect(path.isAbsolute(currentWorkingDirectory()), isTrue);
      expect(path.isAbsolute(projectRootDirectory()), isTrue);
    });

    test('encoding builtins roundtrip base64 and hash UTF-8 strings', () {
      final decoded = fromBase64('SGVsbG8h');
      expect(decoded, equals('Hello!'));
      expect(toBase64(decoded), equals('SGVsbG8h'));
      expect(
        sha1Hash('hello'),
        equals('aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d'),
      );
    });

    test('file builtins read and hash bytes', () {
      final path = 'test/core/io/output_helpers_test.dart';
      expect(readTextFile(path), contains("group('output helper'"));
      expect(fileBase64(path), isNotEmpty);
      expect(fileBase64Sha256(path), hasLength(44));
    });

    test('map builtins sort entries and preserve nulls and fallbacks', () {
      final value = <String, dynamic>{'present': null, 'other': 42};
      expect(
        mapEntries(value),
        equals([
          {'key': 'other', 'value': 42},
          {'key': 'present', 'value': null},
        ]),
      );
      expect(mapLookup(value, 'present', 'fallback'), isNull);
      expect(mapLookup(value, 'missing', 'fallback'), equals('fallback'));
    });

    test('can and try catch synchronous and output failures', () async {
      expect(
        await canValue(() => indexValue({'a': 1}, 'a')).getValue(),
        isTrue,
      );
      expect(
        await canValue(() => indexValue({'a': 1}, 'b')).getValue(),
        isFalse,
      );
      expect(
        await tryValue(
          () => Output<int>(Future.error(StateError('nope'))),
          () => 42,
        ).getValue(),
        equals(42),
      );
    });

    test('output unwraps nested map/list input values', () async {
      final value = output({
        Input.fromValue('hello'): Output.create('world'),
        'list': [Output.create(1), Input.fromValue(2)],
      });

      final data = await value.getData();
      expect(data.isKnown, isTrue);
      expect(
        data.value,
        equals({
          'hello': 'world',
          'list': [1, 2],
        }),
      );
    });

    test('output becomes unknown when nested output is unknown', () async {
      final value = output({
        'known': 1,
        'unknown': Output.createUnknown<int>(),
      });

      final data = await value.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('output resolves futures recursively', () async {
      final value = output(Future.value(Output.create('future-value')));
      final data = await value.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('future-value'));
    });

    test('output iterable becomes unknown when any item is unknown', () async {
      final value = output([1, Output.createUnknown<int>(), 3]);
      final data = await value.getData();

      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('secret and unsecret preserve value and knownness', () async {
      final wrapped = secret({'a': 1});
      final wrappedData = await wrapped.getData();
      expect(wrappedData.isKnown, isTrue);
      expect(wrappedData.isSecret, isTrue);
      expect(wrappedData.value, equals({'a': 1}));

      final plain = unsecret(wrapped);
      final plainData = await plain.getData();
      expect(plainData.isKnown, isTrue);
      expect(plainData.isSecret, isFalse);
      expect(plainData.value, equals({'a': 1}));
    });

    test('secret preserves its inferred static value type', () async {
      final Output<String> wrapped = secret('value');
      final data = await wrapped.getData();

      expect(data.value, 'value');
      expect(data.isSecret, isTrue);
    });

    test('secret flattens and re-secrets an existing output', () async {
      final original = Output.create('value');
      final wrapped = secret(original);
      final data = await wrapped.getData();

      expect(data.value, 'value');
      expect(data.isSecret, isTrue);
    });

    test('secretInput preserves a contextual input type', () async {
      final Input<Map<String, String>> wrapped = secretInput(
        ({'key': 'value'}).input(),
      );
      final data = await wrapped.toOutput().getData();

      expect(data.value, {'key': 'value'});
      expect(data.isSecret, isTrue);
    });

    test('jsonStringify and jsonParse roundtrip values', () async {
      final encoded = jsonStringify({
        'x': Output.create(1),
        'y': [Output.create('a'), 2],
      });
      final encodedValue = await encoded.getValue();
      expect(encodedValue, equals('{"x":1,"y":["a",2]}'));

      final decoded = jsonParse(encoded);
      expect(
        await decoded.getValue(),
        equals({
          'x': 1,
          'y': ['a', 2],
        }),
      );
    });

    test('deferredOutput resolves and keeps source metadata', () async {
      final dep = DependencyResource(
        'urn:pulumi:stack::project::pkg:type::dep',
      );
      final source = Output<String>(
        Future.value(
          OutputData<String>(
            value: 'hello',
            isKnown: true,
            isSecret: true,
            resources: {dep},
          ),
        ),
      );

      final (result, resolve) = deferredOutput<String>();
      resolve(source);

      final data = await result.getData();
      expect(data.value, equals('hello'));
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.resources, equals({dep}));
    });

    test('deferredOutput propagates source errors', () async {
      final source = Output<String>(
        Future<OutputData<String>>.error(StateError('boom')),
      );

      final (result, resolve) = deferredOutput<String>();
      resolve(source);

      await expectLater(result.getData(), throwsStateError);
    });
  });
}
