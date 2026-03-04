/// The publisher scope.
enum PublisherScope {
  valueUnknown("Unknown"),
  valuePrivate("Private");

  const PublisherScope(this.wireValue);
  final String wireValue;

  static PublisherScope fromValue(String value) {
    for (final item in PublisherScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublisherScope value: $value');
  }
}
