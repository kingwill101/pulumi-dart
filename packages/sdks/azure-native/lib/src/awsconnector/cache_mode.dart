/// CacheMode enum
enum CacheMode {
  lOCALCUSTOMCACHE("LOCAL_CUSTOM_CACHE"),
  lOCALDOCKERLAYERCACHE("LOCAL_DOCKER_LAYER_CACHE"),
  lOCALSOURCECACHE("LOCAL_SOURCE_CACHE");

  const CacheMode(this.wireValue);
  final String wireValue;

  static CacheMode fromValue(String value) {
    for (final item in CacheMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheMode value: $value');
  }
}
