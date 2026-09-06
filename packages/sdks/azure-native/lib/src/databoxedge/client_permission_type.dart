import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of access to be allowed for the client.
enum ClientPermissionType implements pulumi.PulumiEnum<String> {
  valueNoAccess("NoAccess"),
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

  const ClientPermissionType(this.wireValue);
  @override
  final String wireValue;

  static ClientPermissionType fromValue(String value) {
    for (final item in ClientPermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientPermissionType value: $value');
  }
}
