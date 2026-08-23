/// Output data delivery mode enums.
enum OutputDeliveryMode {
  readWriteMount("ReadWriteMount"),
  upload("Upload"),
  direct("Direct");

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
