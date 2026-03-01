/// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes <= 1.24 or Windows2022 when Kubernetes >= 1.25 if OSType is Windows.
enum OSSKU {
  valueUbuntu("Ubuntu"),
  valueAzureLinux("AzureLinux"),
  valueAzureLinux3("AzureLinux3"),
  valueCBLMariner("CBLMariner"),
  valueWindows2019("Windows2019"),
  valueWindows2022("Windows2022"),
  valueUbuntu2204("Ubuntu2204");

  const OSSKU(this.value);
  final String value;

  static OSSKU fromValue(String value) {
    for (final item in OSSKU.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSSKU value: $value');
  }
}

