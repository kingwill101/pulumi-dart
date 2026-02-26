/// OSVersion specifies the Windows node config to be used on the node
enum WindowsNodeConfigOsVersion2 {
  osVersionUnspecified("OS_VERSION_UNSPECIFIED"),
  osVersionLtsc2019("OS_VERSION_LTSC2019"),
  osVersionLtsc2022("OS_VERSION_LTSC2022");

  const WindowsNodeConfigOsVersion2(this.value);
  final String value;

  static WindowsNodeConfigOsVersion2 fromValue(String value) {
    for (final item in WindowsNodeConfigOsVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsNodeConfigOsVersion2 value: $value');
  }
}
