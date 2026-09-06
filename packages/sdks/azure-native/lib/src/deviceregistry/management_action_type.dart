import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the action.
enum ManagementActionType implements pulumi.PulumiEnum<String> {
  call("Call"),
  read("Read"),
  write("Write");

  const ManagementActionType(this.wireValue);
  @override
  final String wireValue;

  static ManagementActionType fromValue(String value) {
    for (final item in ManagementActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagementActionType value: $value');
  }
}
