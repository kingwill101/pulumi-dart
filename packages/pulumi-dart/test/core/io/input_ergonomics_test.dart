import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  test(
    'accepts a typed literal helper and an Output without conversion',
    () async {
      final redisPassword = Output.create('secret');
      final pair = _KeyValuePair(
        name: input('REDIS_PWD'),
        value: redisPassword,
      );

      expect(await pair.name!.toOutput().getValue(), 'REDIS_PWD');
      expect(await pair.value!.toOutput().getValue(), 'secret');
      expect(pair.value, same(redisPassword));
    },
  );

  test('literal helper preserves its inferred static type', () async {
    final Input<String> stringValue = input('value');
    final Input<int> integerValue = input(42);

    expect(await stringValue.toOutput().getValue(), 'value');
    expect(await integerValue.toOutput().getValue(), 42);
  });

  test('typed collection helpers mix literals and outputs', () async {
    final dynamicValue = Output.create('dynamic');
    final list = inputList<String>([input('static'), dynamicValue]);
    final map = inputMap<String>({
      'static': input('value'),
      'dynamic': dynamicValue,
    });

    expect(await list.toOutput().getValue(), ['static', 'dynamic']);
    expect(await map.toOutput().getValue(), {
      'static': 'value',
      'dynamic': 'dynamic',
    });
  });

  test('input concatenation preserves output metadata', () async {
    final secret = Output.createSecret(Output.create('secret'));
    final message = concatInputs([
      input('value='),
      secret,
      input(', count='),
      input(2),
    ]);

    final data = await message.getData();
    expect(data.value, 'value=secret, count=2');
    expect(data.isSecret, isTrue);
  });
}

final class _KeyValuePair {
  const _KeyValuePair({this.name, this.value});

  final Input<String>? name;
  final Input<String>? value;
}
