import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  test('package exports are usable', () async {
    final input = Input.fromValue('value');
    final output = input.toOutput();

    expect(await output.getValue(), 'value');
  });
}
