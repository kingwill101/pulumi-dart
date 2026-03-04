/// connector type
enum Platform {
  azureMonitor("AzureMonitor");

  const Platform(this.wireValue);
  final String wireValue;

  static Platform fromValue(String value) {
    for (final item in Platform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Platform value: $value');
  }
}
