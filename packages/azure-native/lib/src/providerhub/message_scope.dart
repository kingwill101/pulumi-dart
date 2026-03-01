/// The message scope.
enum MessageScope {
  notSpecified("NotSpecified"),
  registeredSubscriptions("RegisteredSubscriptions");

  const MessageScope(this.value);
  final String value;

  static MessageScope fromValue(String value) {
    for (final item in MessageScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageScope value: $value');
  }
}

