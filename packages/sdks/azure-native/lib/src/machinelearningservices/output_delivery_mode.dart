/// Output Asset Delivery Mode.
enum OutputDeliveryMode {
  valueReadWriteMount("ReadWriteMount"),
  valueUpload("Upload"),
  valueDirect("Direct");

  const OutputDeliveryMode(this.value);
  final String value;

  static OutputDeliveryMode fromValue(String value) {
    for (final item in OutputDeliveryMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputDeliveryMode value: $value');
  }
}

