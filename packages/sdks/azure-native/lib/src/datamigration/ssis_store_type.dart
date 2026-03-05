/// The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
enum SsisStoreType {
  valueSsisCatalog("SsisCatalog");

  const SsisStoreType(this.wireValue);
  final String wireValue;

  static SsisStoreType fromValue(String value) {
    for (final item in SsisStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisStoreType value: $value');
  }
}

