import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of actions that can be performed.
enum AclActionType implements pulumi.PulumiEnum<String> {
  valueDrop("Drop"),
  valueCount("Count"),
  valueLog("Log");

  const AclActionType(this.wireValue);
  @override
  final String wireValue;

  static AclActionType fromValue(String value) {
    for (final item in AclActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AclActionType value: $value');
  }
}
