/// Data policy of the storage Account.
enum DataPolicy {
  valueCloud("Cloud"),
  valueLocal("Local");

  const DataPolicy(this.value);
  final String value;

  static DataPolicy fromValue(String value) {
    for (final item in DataPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataPolicy value: $value');
  }
}

