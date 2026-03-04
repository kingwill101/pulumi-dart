/// whether to send notification under any event.
enum SendAllEvents {
  true_("true"),
  false_("false");

  const SendAllEvents(this.wireValue);
  final String wireValue;

  static SendAllEvents fromValue(String value) {
    for (final item in SendAllEvents.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SendAllEvents value: $value');
  }
}
