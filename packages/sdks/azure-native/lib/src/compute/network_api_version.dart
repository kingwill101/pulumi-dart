/// specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
enum NetworkApiVersion {
  resource20201101("2020-11-01"),
  resource20221101("2022-11-01");

  const NetworkApiVersion(this.value);
  final String value;

  static NetworkApiVersion fromValue(String value) {
    for (final item in NetworkApiVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkApiVersion value: $value');
  }
}

