/// The Maps account key to use for signing. Picking `primaryKey` or `secondaryKey` will use the Maps account Shared Keys, and using `managedIdentity` will use the auto-renewed private key to sign the SAS.
enum SigningKey {
  valuePrimaryKey("primaryKey"),
  valueSecondaryKey("secondaryKey"),
  valueManagedIdentity("managedIdentity");

  const SigningKey(this.wireValue);
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

