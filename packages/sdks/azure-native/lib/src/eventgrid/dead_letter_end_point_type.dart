/// Type of the endpoint for the dead letter destination
enum DeadLetterEndPointType {
  valueStorageBlob("StorageBlob");

  const DeadLetterEndPointType(this.wireValue);
  final String wireValue;

  static DeadLetterEndPointType fromValue(String value) {
    for (final item in DeadLetterEndPointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeadLetterEndPointType value: $value');
  }
}
