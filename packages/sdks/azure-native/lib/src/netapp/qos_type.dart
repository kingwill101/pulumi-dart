/// The qos type of the pool
enum QosType {
  valueAuto("Auto"),
  valueManual("Manual");

  const QosType(this.value);
  final String value;

  static QosType fromValue(String value) {
    for (final item in QosType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QosType value: $value');
  }
}

