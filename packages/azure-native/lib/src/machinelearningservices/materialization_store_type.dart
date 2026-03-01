/// Specifies the stores to which materialization should happen
enum MaterializationStoreType {
  valueNone("None"),
  valueOnline("Online"),
  valueOffline("Offline"),
  valueOnlineAndOffline("OnlineAndOffline");

  const MaterializationStoreType(this.value);
  final String value;

  static MaterializationStoreType fromValue(String value) {
    for (final item in MaterializationStoreType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaterializationStoreType value: $value');
  }
}

