/// Property value
enum AnomalyResultEnum {
  anomalous("anomalous"),
  normal("normal");

  const AnomalyResultEnum(this.value);
  final String value;

  static AnomalyResultEnum fromValue(String value) {
    for (final item in AnomalyResultEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnomalyResultEnum value: $value');
  }
}

