/// Publisher type of the namespace topic.
enum PublisherType {
  valueCustom("Custom");

  const PublisherType(this.wireValue);
  final String wireValue;

  static PublisherType fromValue(String value) {
    for (final item in PublisherType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublisherType value: $value');
  }
}

