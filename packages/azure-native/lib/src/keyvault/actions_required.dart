/// A message indicating if changes on the service provider require any updates on the consumer.
enum ActionsRequired {
  valueNone("None");

  const ActionsRequired(this.value);
  final String value;

  static ActionsRequired fromValue(String value) {
    for (final item in ActionsRequired.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionsRequired value: $value');
  }
}

