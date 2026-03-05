/// Property value
enum SSEType {
  none("none"),
  sseEbs("sse-ebs"),
  sseKms("sse-kms");

  const SSEType(this.wireValue);
  final String wireValue;

  static SSEType fromValue(String value) {
    for (final item in SSEType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSEType value: $value');
  }
}

