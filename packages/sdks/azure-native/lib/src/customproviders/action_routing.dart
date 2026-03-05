/// The routing types that are supported for action requests.
enum ActionRouting {
  valueProxy("Proxy");

  const ActionRouting(this.wireValue);
  final String wireValue;

  static ActionRouting fromValue(String value) {
    for (final item in ActionRouting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRouting value: $value');
  }
}

