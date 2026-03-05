/// Property value
enum RecorderStatus {
  failure("Failure"),
  pending("Pending"),
  success("Success");

  const RecorderStatus(this.wireValue);
  final String wireValue;

  static RecorderStatus fromValue(String value) {
    for (final item in RecorderStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecorderStatus value: $value');
  }
}

