/// Property value
enum CacheType {
  lOCAL("LOCAL"),
  nOCACHE("NO_CACHE"),
  s3("S3");

  const CacheType(this.value);
  final String value;

  static CacheType fromValue(String value) {
    for (final item in CacheType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheType value: $value');
  }
}

