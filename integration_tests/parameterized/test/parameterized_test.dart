// ignore: unused_import
import 'package:pkg/pkg.dart' as pkg;
import 'package:test/test.dart';

void main() {
  test('generated parameterized SDK exposes resource and invoke symbols', () {
    final randomCtor = pkg.index.Random;
    final echoCtor = pkg.index.Echo;
    final doEcho = pkg.index.doEcho;
    final doEchoArgsCtor = pkg.index.DoEchoArgs;

    expect(randomCtor, isNotNull);
    expect(echoCtor, isNotNull);
    expect(doEcho, isA<Function>());
    expect(doEchoArgsCtor, isA<Function>());
  });
}
