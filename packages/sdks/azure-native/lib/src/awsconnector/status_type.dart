import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum StatusType implements pulumi.PulumiEnum<String> {
  active("Active"),
  inactive("Inactive");

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
