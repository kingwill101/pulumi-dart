import 'package:pulumi/pulumi.dart' as pulumi;

/// Update Cycle Type
enum CycleType implements pulumi.PulumiEnum<String> {
  preview("Preview"),
  slow("Slow"),
  fast("Fast");

  const CycleType(this.wireValue);
  @override
  final String wireValue;

  static CycleType fromValue(String value) {
    for (final item in CycleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CycleType value: $value');
  }
}
