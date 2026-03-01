/// Datasource for the gallery image when provisioning with cloud-init [NoCloud, Azure]
enum CloudInitDataSource {
  noCloud("NoCloud"),
  azure("Azure");

  const CloudInitDataSource(this.value);
  final String value;

  static CloudInitDataSource fromValue(String value) {
    for (final item in CloudInitDataSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudInitDataSource value: $value');
  }
}

