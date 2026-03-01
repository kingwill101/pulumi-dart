/// The publisher scope.
enum PublisherScope {
  valueUnknown("Unknown"),
  valuePrivate("Private");

  const PublisherScope(this.value);
  final String value;

  static PublisherScope fromValue(String value) {
    for (final item in PublisherScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublisherScope value: $value');
  }
}

