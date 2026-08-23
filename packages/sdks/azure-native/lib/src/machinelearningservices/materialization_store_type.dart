/// Specifies the stores to which materialization should happen
enum MaterializationStoreType {
  none("None"),
  online("Online"),
  offline("Offline"),
  onlineAndOffline("OnlineAndOffline");

  const MaterializationStoreType(this.wireValue);
  final String wireValue;

  static MaterializationStoreType fromValue(String value) {
    for (final item in MaterializationStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaterializationStoreType value: $value');
  }
}
