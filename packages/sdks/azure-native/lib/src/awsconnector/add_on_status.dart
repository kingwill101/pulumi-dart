import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the Addon
enum AddOnStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  disabling("Disabling"),
  enabled("Enabled"),
  enabling("Enabling"),
  failed("Failed"),
  terminated("Terminated"),
  terminating("Terminating");

  const AddOnStatus(this.wireValue);
  @override
  final String wireValue;

  static AddOnStatus fromValue(String value) {
    for (final item in AddOnStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddOnStatus value: $value');
  }
}
