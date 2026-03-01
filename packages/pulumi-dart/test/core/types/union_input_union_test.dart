import 'package:pulumi/src/input_union.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/union.dart';
import 'package:test/test.dart';

void main() {
  group('union and input union', () {
    test('Union.fromT0 stores and matches T0 value', () {
      final value = Union<String, int>.fromT0('alpha');

      expect(value.isT0, isTrue);
      expect(value.isT1, isFalse);
      expect(value.asT0, 'alpha');
      expect(value.value, 'alpha');
      expect(value.match((v) => 's:$v', (v) => 'i:$v'), 's:alpha');
      expect(() => value.asT1, throwsStateError);
    });

    test('Union.fromT1 stores and matches T1 value', () {
      final value = Union<String, int>.fromT1(42);

      expect(value.isT0, isFalse);
      expect(value.isT1, isTrue);
      expect(value.asT1, 42);
      expect(value.value, 42);
      expect(value.match((v) => 's:$v', (v) => 'i:$v'), 'i:42');
      expect(() => value.asT0, throwsStateError);
    });

    test(
      'InputUnion static constructors produce correct Output payloads',
      () async {
        final left = InputUnion.fromT0<String, int>('left');
        final right = InputUnion.fromT1<String, int>(7);

        final leftValue = await left.toOutput().getValue();
        final rightValue = await right.toOutput().getValue();

        expect(leftValue.isT0, isTrue);
        expect(leftValue.asT0, 'left');
        expect(rightValue.isT1, isTrue);
        expect(rightValue.asT1, 7);
      },
    );

    test(
      'OutputToInput and value-to-input-union extensions preserve values',
      () async {
        final input = Output.create(123).toInput();
        expect(await input.toOutput().getValue(), 123);

        final fromT0 = ValueToInputUnion<String, int>('abc').toInputUnion();
        final fromT1 = ValueToInputUnionOnT1<String, int>(9).toInputUnion();

        expect((await fromT0.toOutput().getValue()).asT0, 'abc');
        expect((await fromT1.toOutput().getValue()).asT1, 9);
      },
    );
  });
}
