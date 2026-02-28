/// Immutable. The type of a queue (push or pull). `Queue.type` is an immutable property of the queue that is set at the queue creation time. When left unspecified, the default value of `PUSH` is selected.
enum QueueType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  pull("PULL"),
  push("PUSH");

  const QueueType(this.value);
  final String value;

  static QueueType fromValue(String value) {
    for (final item in QueueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueueType value: $value');
  }
}

