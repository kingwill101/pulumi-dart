// ignore: unused_import
import 'package:pkg/pkg.dart' as pkg;
import 'package:test/test.dart';

void main() {
  test('generated parameterized SDK exposes resource symbols', () {
    final randomCtor = pkg.Random.new;
    final echoCtor = pkg.Echo.new;

    expect(randomCtor, isNotNull);
    expect(echoCtor, isNotNull);
  });
}
