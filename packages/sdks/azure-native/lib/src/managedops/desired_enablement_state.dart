import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired enablement state of the Defender For Servers service.
enum DesiredEnablementState implements pulumi.PulumiEnum<String> {
  enable("Enable"),
  disable("Disable");

  const DesiredEnablementState(this.wireValue);
  @override
  final String wireValue;

  static DesiredEnablementState fromValue(String value) {
    for (final item in DesiredEnablementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DesiredEnablementState value: $value');
  }
}
