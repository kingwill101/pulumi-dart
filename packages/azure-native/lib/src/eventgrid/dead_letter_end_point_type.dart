/// Type of the endpoint for the dead letter destination
enum DeadLetterEndPointType {
  valueStorageBlob("StorageBlob");

  const DeadLetterEndPointType(this.value);
  final String value;

  static DeadLetterEndPointType fromValue(String value) {
    for (final item in DeadLetterEndPointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeadLetterEndPointType value: $value');
  }
}

