/// The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum NetworkInterfaceNicType2 {
  gvnic("GVNIC"),
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET");

  const NetworkInterfaceNicType2(this.value);
  final String value;

  static NetworkInterfaceNicType2 fromValue(String value) {
    for (final item in NetworkInterfaceNicType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceNicType2 value: $value');
  }
}
