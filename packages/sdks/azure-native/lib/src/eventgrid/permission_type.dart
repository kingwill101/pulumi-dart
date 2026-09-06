import 'package:pulumi/pulumi.dart' as pulumi;

/// The allowed permission.
enum PermissionType implements pulumi.PulumiEnum<String> {
  valuePublisher("Publisher"),
  valueSubscriber("Subscriber");

  const PermissionType(this.wireValue);
  @override
  final String wireValue;

  static PermissionType fromValue(String value) {
    for (final item in PermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PermissionType value: $value');
  }
}
