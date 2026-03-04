/// The qos type of the pool
enum QosType {
  valueAuto("Auto"),
  valueManual("Manual");

  const QosType(this.wireValue);
  final String wireValue;

  static QosType fromValue(String value) {
    for (final item in QosType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QosType value: $value');
  }
}
