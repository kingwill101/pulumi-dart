import 'package:pulumi/pulumi.dart' as pulumi;

/// The operational status of the FlowProfile.
enum FlowProfileStatus implements pulumi.PulumiEnum<String> {
  obsolete("Obsolete"),
  enabled("Enabled");

  const FlowProfileStatus(this.wireValue);
  @override
  final String wireValue;

  static FlowProfileStatus fromValue(String value) {
    for (final item in FlowProfileStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowProfileStatus value: $value');
  }
}
