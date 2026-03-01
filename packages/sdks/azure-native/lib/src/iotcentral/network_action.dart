/// The default network action to apply.
enum NetworkAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const NetworkAction(this.value);
  final String value;

  static NetworkAction fromValue(String value) {
    for (final item in NetworkAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAction value: $value');
  }
}

