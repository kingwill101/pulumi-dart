/// Property value
enum StatusName {
  reachability("reachability");

  const StatusName(this.value);
  final String value;

  static StatusName fromValue(String value) {
    for (final item in StatusName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusName value: $value');
  }
}

