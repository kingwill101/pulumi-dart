// ignore: unused_import
import 'package:pkg/pkg.dart' as pkg;
import 'package:test/test.dart';

void main() {
  test('generated parameterized SDK exposes resource and invoke symbols', () {
    final randomCtor = pkg.Random.new;
    final echoCtor = pkg.Echo.new;
    final doEcho = pkg.doEcho;
    final doEchoArgsCtor = pkg.DoEchoArgs.new;

    expect(randomCtor, isNotNull);
    expect(echoCtor, isNotNull);
    expect(doEcho, isA<Function>());
    expect(doEchoArgsCtor, isA<Function>());
  });
}
