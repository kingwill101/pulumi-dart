/// whether to send notification under any event.
enum SendAllEvents {
  true_("true"),
  false_("false");

  const SendAllEvents(this.value);
  final String value;

  static SendAllEvents fromValue(String value) {
    for (final item in SendAllEvents.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SendAllEvents value: $value');
  }
}

