/// Property value
enum StatusName {
  reachability("reachability");

  const StatusName(this.wireValue);
  final String wireValue;

  static StatusName fromValue(String value) {
    for (final item in StatusName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusName value: $value');
  }
}

