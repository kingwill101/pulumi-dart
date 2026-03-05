/// Data policy of the storage Account.
enum DataPolicy {
  valueCloud("Cloud"),
  valueLocal("Local");

  const DataPolicy(this.wireValue);
  final String wireValue;

  static DataPolicy fromValue(String value) {
    for (final item in DataPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataPolicy value: $value');
  }
}

