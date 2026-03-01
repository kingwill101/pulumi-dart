/// S3 Intelligent-Tiering access tier. See [Storage class for automatically optimizing frequently and infrequently accessed objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access) for a list of access tiers in the S3 Intelligent-Tiering storage class.
enum TieringAccessTier {
  aRCHIVEACCESS("ARCHIVE_ACCESS"),
  dEEPARCHIVEACCESS("DEEP_ARCHIVE_ACCESS");

  const TieringAccessTier(this.value);
  final String value;

  static TieringAccessTier fromValue(String value) {
    for (final item in TieringAccessTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TieringAccessTier value: $value');
  }
}

