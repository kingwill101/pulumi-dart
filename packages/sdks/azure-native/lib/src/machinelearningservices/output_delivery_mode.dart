/// Output Asset Delivery Mode.
enum OutputDeliveryMode {
  valueReadWriteMount("ReadWriteMount"),
  valueUpload("Upload"),
  valueDirect("Direct");

  const OutputDeliveryMode(this.wireValue);
  final String wireValue;

  static OutputDeliveryMode fromValue(String value) {
    for (final item in OutputDeliveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputDeliveryMode value: $value');
  }
}
