import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
enum AssignmentType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueSystem("System"),
  valueSystemHidden("SystemHidden"),
  valueCustom("Custom");

  const AssignmentType(this.wireValue);
  @override
  final String wireValue;

  static AssignmentType fromValue(String value) {
    for (final item in AssignmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentType value: $value');
  }
}
