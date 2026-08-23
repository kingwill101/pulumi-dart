/// The scope type
enum ScopeType {
  serverGroupId("ServerGroupId"),
  azureResourceGraphQuery("AzureResourceGraphQuery");

  const ScopeType(this.wireValue);
  final String wireValue;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}
