/// If omitted, the default value is Default.
enum NodeCommunicationMode {
  default_("Default"),
  classic("Classic"),
  simplified("Simplified");

  const NodeCommunicationMode(this.wireValue);
  final String wireValue;

  static NodeCommunicationMode fromValue(String value) {
    for (final item in NodeCommunicationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeCommunicationMode value: $value');
  }
}
