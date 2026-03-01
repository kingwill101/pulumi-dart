/// connector type
enum Platform {
  azureMonitor("AzureMonitor");

  const Platform(this.value);
  final String value;

  static Platform fromValue(String value) {
    for (final item in Platform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Platform value: $value');
  }
}

