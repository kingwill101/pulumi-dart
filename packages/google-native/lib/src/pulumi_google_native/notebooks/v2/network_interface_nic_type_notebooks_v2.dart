/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum NetworkInterfaceNicTypeNotebooksV2 {
  nicTypeUnspecified("NIC_TYPE_UNSPECIFIED"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const NetworkInterfaceNicTypeNotebooksV2(this.value);
  final String value;

  static NetworkInterfaceNicTypeNotebooksV2 fromValue(String value) {
    for (final item in NetworkInterfaceNicTypeNotebooksV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkInterfaceNicTypeNotebooksV2 value: $value');
  }
}
