import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  test('rangeEntries supports numeric, list, and stable map ranges', () {
    expect(
      rangeEntries(2).map((entry) => [entry.key, entry.value]),
      [
        [0, 0],
        [1, 1],
      ],
    );
    expect(
      rangeEntries(['a', 'b']).map((entry) => [entry.key, entry.value]),
      [
        [0, 'a'],
        [1, 'b'],
      ],
    );
    expect(
      rangeEntries({'b': 2, 'a': 1}).map(
        (entry) => [entry.key, entry.value],
      ),
      [
        ['a', 1],
        ['b', 2],
      ],
    );
  });
}
