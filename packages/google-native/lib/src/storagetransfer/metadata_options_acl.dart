/// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
enum MetadataOptionsAcl {
  aclUnspecified("ACL_UNSPECIFIED"),
  aclDestinationBucketDefault("ACL_DESTINATION_BUCKET_DEFAULT"),
  aclPreserve("ACL_PRESERVE");

  const MetadataOptionsAcl(this.value);
  final String value;

  static MetadataOptionsAcl fromValue(String value) {
    for (final item in MetadataOptionsAcl.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsAcl value: $value');
  }
}
