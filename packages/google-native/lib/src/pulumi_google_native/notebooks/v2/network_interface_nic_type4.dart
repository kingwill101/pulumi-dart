/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum NetworkInterfaceNicType4 {
  nicTypeUnspecified("NIC_TYPE_UNSPECIFIED"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const NetworkInterfaceNicType4(this.value);
  final String value;

  static NetworkInterfaceNicType4 fromValue(String value) {
    for (final item in NetworkInterfaceNicType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceNicType4 value: $value');
  }
}
