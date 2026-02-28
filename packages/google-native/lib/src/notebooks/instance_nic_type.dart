/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum InstanceNicType {
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const InstanceNicType(this.value);
  final String value;

  static InstanceNicType fromValue(String value) {
    for (final item in InstanceNicType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceNicType value: $value');
  }
}
