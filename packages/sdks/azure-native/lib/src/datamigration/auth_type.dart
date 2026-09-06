import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication type used for accessing Azure Blob Storage.
enum AuthType implements pulumi.PulumiEnum<String> {
  valueAccountKey("AccountKey"),
  valueManagedIdentity("ManagedIdentity");

  const AuthType(this.wireValue);
  @override
  final String wireValue;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}
