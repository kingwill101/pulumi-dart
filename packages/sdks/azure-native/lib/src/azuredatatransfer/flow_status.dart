import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the current flow
enum FlowStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FlowStatus(this.wireValue);
  @override
  final String wireValue;

  static FlowStatus fromValue(String value) {
    for (final item in FlowStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowStatus value: $value');
  }
}
