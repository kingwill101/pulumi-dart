enum NetworkInterfaceSubInterfaceIpAllocationMode {
  allocateIp("ALLOCATE_IP"),
  doNotAllocateIp("DO_NOT_ALLOCATE_IP"),
  unspecified("UNSPECIFIED");

  const NetworkInterfaceSubInterfaceIpAllocationMode(this.value);
  final String value;

  static NetworkInterfaceSubInterfaceIpAllocationMode fromValue(String value) {
    for (final item in NetworkInterfaceSubInterfaceIpAllocationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkInterfaceSubInterfaceIpAllocationMode value: $value',
    );
  }
}
