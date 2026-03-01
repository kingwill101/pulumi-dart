/// The cloud connector type.
enum CloudType {
  valueAWS("AWS");

  const CloudType(this.value);
  final String value;

  static CloudType fromValue(String value) {
    for (final item in CloudType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudType value: $value');
  }
}

