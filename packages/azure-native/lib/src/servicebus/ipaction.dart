/// The IP Filter Action
enum IPAction {
  valueAccept("Accept"),
  valueReject("Reject");

  const IPAction(this.value);
  final String value;

  static IPAction fromValue(String value) {
    for (final item in IPAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAction value: $value');
  }
}

