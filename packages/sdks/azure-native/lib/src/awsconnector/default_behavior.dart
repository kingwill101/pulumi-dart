import 'package:pulumi/pulumi.dart' as pulumi;

/// Default handling for logs that don't match any of the specified filtering conditions.
enum DefaultBehavior implements pulumi.PulumiEnum<String> {
  dROP("DROP"),
  kEEP("KEEP");

  const DefaultBehavior(this.wireValue);
  @override
  final String wireValue;

  static DefaultBehavior fromValue(String value) {
    for (final item in DefaultBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultBehavior value: $value');
  }
}
