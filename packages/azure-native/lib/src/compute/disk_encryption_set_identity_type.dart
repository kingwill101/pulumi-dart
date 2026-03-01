/// The type of Managed Identity used by the DiskEncryptionSet. Only SystemAssigned is supported for new creations. Disk Encryption Sets can be updated with Identity type None during migration of subscription to a new Azure Active Directory tenant; it will cause the encrypted resources to lose access to the keys.
enum DiskEncryptionSetIdentityType {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  none("None");

  const DiskEncryptionSetIdentityType(this.value);
  final String value;

  static DiskEncryptionSetIdentityType fromValue(String value) {
    for (final item in DiskEncryptionSetIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskEncryptionSetIdentityType value: $value');
  }
}

