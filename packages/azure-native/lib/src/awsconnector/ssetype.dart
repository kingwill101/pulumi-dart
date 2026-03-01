/// Property value
enum SSEType {
  none("none"),
  sseEbs("sse-ebs"),
  sseKms("sse-kms");

  const SSEType(this.value);
  final String value;

  static SSEType fromValue(String value) {
    for (final item in SSEType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSEType value: $value');
  }
}

