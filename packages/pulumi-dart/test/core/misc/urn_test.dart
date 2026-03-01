import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('urn', () {
    test('parseUrn handles urn with name segment', () {
      final parsed = parseUrn(
        'urn:pulumi:stack::project::pulumi:providers:aws::default_4_13_0',
      );

      expect(parsed.urnName, equals('default_4_13_0'));
      expect(parsed.typ, equals('pulumi:providers:aws'));
      expect(parsed.pkgName, equals('pulumi'));
      expect(parsed.modName, equals('providers'));
      expect(parsed.typName, equals('aws'));
    });

    test('parseUrn handles urn without name segment', () {
      final parsed = parseUrn(
        'urn:pulumi:stack::project::pulumi:providers:aws',
      );

      expect(parsed.urnName, isEmpty);
      expect(parsed.typ, equals('pulumi:providers:aws'));
      expect(parsed.pkgName, equals('pulumi'));
      expect(parsed.modName, equals('providers'));
      expect(parsed.typName, equals('aws'));
    });

    test('parseUrn rejects malformed urns', () {
      expect(() => parseUrn('invalid-urn'), throwsFormatException);
      expect(
        () => parseUrn('urn:pulumi:stack::project::invalidType'),
        throwsFormatException,
      );
    });
  });
}
