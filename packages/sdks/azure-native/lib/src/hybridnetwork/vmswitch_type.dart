import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the VM switch.
enum VMSwitchType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueManagement("Management"),
  valueWan("Wan"),
  valueLan("Lan");

  const VMSwitchType(this.wireValue);
  @override
  final String wireValue;

  static VMSwitchType fromValue(String value) {
    for (final item in VMSwitchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMSwitchType value: $value');
  }
}
