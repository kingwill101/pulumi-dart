import 'package:pulumi/pulumi.dart' as pulumi;

/// The Maps account key to use for signing. Picking `primaryKey` or `secondaryKey` will use the Maps account Shared Keys, and using `managedIdentity` will use the auto-renewed private key to sign the SAS.
enum SigningKey implements pulumi.PulumiEnum<String> {
  valuePrimaryKey("primaryKey"),
  valueSecondaryKey("secondaryKey"),
  valueManagedIdentity("managedIdentity");

  const SigningKey(this.wireValue);
  @override
  final String wireValue;

  static SigningKey fromValue(String value) {
    for (final item in SigningKey.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SigningKey value: $value');
  }
}
