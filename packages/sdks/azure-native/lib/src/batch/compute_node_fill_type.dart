import 'package:pulumi/pulumi.dart' as pulumi;

/// How tasks should be distributed across compute nodes.
enum ComputeNodeFillType implements pulumi.PulumiEnum<String> {
  spread("Spread"),
  pack("Pack");

  const ComputeNodeFillType(this.wireValue);
  @override
  final String wireValue;

  static ComputeNodeFillType fromValue(String value) {
    for (final item in ComputeNodeFillType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeNodeFillType value: $value');
  }
}
