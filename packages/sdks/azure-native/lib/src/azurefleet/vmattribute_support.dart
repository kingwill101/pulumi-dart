/// Specifies whether the VMSize supporting RDMA (Remote Direct Memory Access) should be used to build Fleet or not.
enum VMAttributeSupport {
  excluded("Excluded"),
  included("Included"),
  required("Required");

  const VMAttributeSupport(this.value);
  final String value;

  static VMAttributeSupport fromValue(String value) {
    for (final item in VMAttributeSupport.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMAttributeSupport value: $value');
  }
}

