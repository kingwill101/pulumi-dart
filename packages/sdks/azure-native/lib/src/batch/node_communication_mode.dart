/// If omitted, the default value is Default.
enum NodeCommunicationMode {
  default_("Default"),
  classic("Classic"),
  simplified("Simplified");

  const NodeCommunicationMode(this.value);
  final String value;

  static NodeCommunicationMode fromValue(String value) {
    for (final item in NodeCommunicationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeCommunicationMode value: $value');
  }
}

