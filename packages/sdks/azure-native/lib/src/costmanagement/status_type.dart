import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused.
enum StatusType implements pulumi.PulumiEnum<String> {
  valueActive("Active"),
  valueInactive("Inactive");

  const StatusType(this.wireValue);
  @override
  final String wireValue;

  static StatusType fromValue(String value) {
    for (final item in StatusType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusType value: $value');
  }
}
