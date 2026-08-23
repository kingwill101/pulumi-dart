/// Specifies whether the VMSize supporting RDMA (Remote Direct Memory Access) should be used to build launch instances or not.
enum VMAttributeSupport {
  excluded("Excluded"),
  included("Included"),
  required("Required");

  const VMAttributeSupport(this.wireValue);
  final String wireValue;

  static VMAttributeSupport fromValue(String value) {
    for (final item in VMAttributeSupport.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMAttributeSupport value: $value');
  }
}
