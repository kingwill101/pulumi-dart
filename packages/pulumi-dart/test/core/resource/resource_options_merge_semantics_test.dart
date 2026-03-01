import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('resource options merge semantics', () {
    test('scalar fields keep left value when right side omits the field', () {
      final merged = const ResourceOptions(
        protect: true,
      ).merge(const ResourceOptions());

      expect(merged.protect, isTrue);
    });

    test('array fields keep left value when right side omits the field', () {
      final merged = const ResourceOptions(
        ignoreChanges: ['a', 'b'],
      ).merge(const ResourceOptions());

      expect(merged.ignoreChanges, equals(['a', 'b']));
    });

    test('aliases keep left values when right side omits aliases', () {
      final a1 = Alias(name: Input.fromValue('a'));
      final a2 = Alias(name: Input.fromValue('b'));

      final merged = ResourceOptions(
        aliases: [a1, a2],
      ).merge(const ResourceOptions());

      expect(merged.aliases, hasLength(2));
      expect(merged.aliases![0], same(a1));
      expect(merged.aliases![1], same(a2));
    });
  });
}
