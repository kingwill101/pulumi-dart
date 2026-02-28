/// Required. VMware Engine network type.
enum VmwareEngineNetworkType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  legacy("LEGACY"),
  standard("STANDARD");

  const VmwareEngineNetworkType(this.value);
  final String value;

  static VmwareEngineNetworkType fromValue(String value) {
    for (final item in VmwareEngineNetworkType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmwareEngineNetworkType value: $value');
  }
}

