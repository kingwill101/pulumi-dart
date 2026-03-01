import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('error', () {
    test('invalid URN parsing surfaces useful format error', () {
      expect(
        () => parseUrn('invalid-urn'),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            contains('expected at least stack/project/type sections'),
          ),
        ),
      );
    });
  });
}
