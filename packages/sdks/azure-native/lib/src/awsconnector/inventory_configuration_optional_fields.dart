/// InventoryConfigurationOptionalFields enum
enum InventoryConfigurationOptionalFields {
  bucketKeyStatus("BucketKeyStatus"),
  checksumAlgorithm("ChecksumAlgorithm"),
  eTag("ETag"),
  encryptionStatus("EncryptionStatus"),
  intelligentTieringAccessTier("IntelligentTieringAccessTier"),
  isMultipartUploaded("IsMultipartUploaded"),
  lastModifiedDate("LastModifiedDate"),
  objectAccessControlList("ObjectAccessControlList"),
  objectLockLegalHoldStatus("ObjectLockLegalHoldStatus"),
  objectLockMode("ObjectLockMode"),
  objectLockRetainUntilDate("ObjectLockRetainUntilDate"),
  objectOwner("ObjectOwner"),
  replicationStatus("ReplicationStatus"),
  size("Size"),
  storageClass("StorageClass");

  const InventoryConfigurationOptionalFields(this.wireValue);
  final String wireValue;

  static InventoryConfigurationOptionalFields fromValue(String value) {
    for (final item in InventoryConfigurationOptionalFields.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InventoryConfigurationOptionalFields value: $value',
    );
  }
}
