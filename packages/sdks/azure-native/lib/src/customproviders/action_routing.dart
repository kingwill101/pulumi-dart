/// The routing types that are supported for action requests.
enum ActionRouting {
  valueProxy("Proxy");

  const ActionRouting(this.value);
  final String value;

  static ActionRouting fromValue(String value) {
    for (final item in ActionRouting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRouting value: $value');
  }
}

