/// The azure resource type.
enum AzureResourceType {
  valueKeyVault("KeyVault");

  const AzureResourceType(this.value);
  final String value;

  static AzureResourceType fromValue(String value) {
    for (final item in AzureResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureResourceType value: $value');
  }
}

