/// Provisioning type of the byte capacity of the pool.
enum StoragePoolCapacityProvisioningType {
  advanced("ADVANCED"),
  standard("STANDARD"),
  unspecified("UNSPECIFIED");

  const StoragePoolCapacityProvisioningType(this.value);
  final String value;

  static StoragePoolCapacityProvisioningType fromValue(String value) {
    for (final item in StoragePoolCapacityProvisioningType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown StoragePoolCapacityProvisioningType value: $value',
    );
  }
}
