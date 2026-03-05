/// The cloud connector type.
enum CloudType {
  valueAWS("AWS");

  const CloudType(this.wireValue);
  final String wireValue;

  static CloudType fromValue(String value) {
    for (final item in CloudType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudType value: $value');
  }
}

