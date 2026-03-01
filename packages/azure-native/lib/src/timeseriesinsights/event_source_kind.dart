/// The kind of the event source.
enum EventSourceKind {
  valueMicrosoftEventHub("Microsoft.EventHub"),
  valueMicrosoftIoTHub("Microsoft.IoTHub");

  const EventSourceKind(this.value);
  final String value;

  static EventSourceKind fromValue(String value) {
    for (final item in EventSourceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSourceKind value: $value');
  }
}

