/// Property value
enum RecorderStatus {
  failure("Failure"),
  pending("Pending"),
  success("Success");

  const RecorderStatus(this.value);
  final String value;

  static RecorderStatus fromValue(String value) {
    for (final item in RecorderStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecorderStatus value: $value');
  }
}

