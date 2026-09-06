import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies authentication type being used for connecting to the storage account.
enum AuthenticationType implements pulumi.PulumiEnum<String> {
  valueKeyBased("keyBased"),
  valueIdentityBased("identityBased");

  const AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}
