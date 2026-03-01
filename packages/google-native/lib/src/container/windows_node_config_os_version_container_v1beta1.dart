/// OSVersion specifies the Windows node config to be used on the node
enum WindowsNodeConfigOsVersionContainerV1beta1 {
  osVersionUnspecified("OS_VERSION_UNSPECIFIED"),
  osVersionLtsc2019("OS_VERSION_LTSC2019"),
  osVersionLtsc2022("OS_VERSION_LTSC2022");

  const WindowsNodeConfigOsVersionContainerV1beta1(this.value);
  final String value;

  static WindowsNodeConfigOsVersionContainerV1beta1 fromValue(String value) {
    for (final item in WindowsNodeConfigOsVersionContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown WindowsNodeConfigOsVersionContainerV1beta1 value: $value',
    );
  }
}
