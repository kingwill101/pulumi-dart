/// Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.
enum MetadataOptionsKmsKey {
  kmsKeyUnspecified("KMS_KEY_UNSPECIFIED"),
  kmsKeyDestinationBucketDefault("KMS_KEY_DESTINATION_BUCKET_DEFAULT"),
  kmsKeyPreserve("KMS_KEY_PRESERVE");

  const MetadataOptionsKmsKey(this.value);
  final String value;

  static MetadataOptionsKmsKey fromValue(String value) {
    for (final item in MetadataOptionsKmsKey.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsKmsKey value: $value');
  }
}

