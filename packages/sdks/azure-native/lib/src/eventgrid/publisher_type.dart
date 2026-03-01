/// Publisher type of the namespace topic.
enum PublisherType {
  valueCustom("Custom");

  const PublisherType(this.value);
  final String value;

  static PublisherType fromValue(String value) {
    for (final item in PublisherType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublisherType value: $value');
  }
}

