/// The default network action to apply.
enum NetworkAction {
  valueAllow("Allow"),
  valueDeny("Deny");

  const NetworkAction(this.wireValue);
  final String wireValue;

  static NetworkAction fromValue(String value) {
    for (final item in NetworkAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAction value: $value');
  }
}
