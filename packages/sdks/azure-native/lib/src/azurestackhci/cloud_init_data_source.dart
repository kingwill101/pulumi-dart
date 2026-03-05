/// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
enum CloudInitDataSource {
  noCloud("NoCloud"),
  azure("Azure");

  const CloudInitDataSource(this.wireValue);
  final String wireValue;

  static CloudInitDataSource fromValue(String value) {
    for (final item in CloudInitDataSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudInitDataSource value: $value');
  }
}

