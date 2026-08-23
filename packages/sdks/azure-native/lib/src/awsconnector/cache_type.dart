/// Property value
enum CacheType {
  lOCAL("LOCAL"),
  nOCACHE("NO_CACHE"),
  s3("S3");

  const CacheType(this.wireValue);
  final String wireValue;

  static CacheType fromValue(String value) {
    for (final item in CacheType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheType value: $value');
  }
}
