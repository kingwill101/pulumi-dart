/// A message indicating if changes on the service provider require any updates on the consumer.
enum ActionsRequired {
  valueNone("None");

  const ActionsRequired(this.wireValue);
  final String wireValue;

  static ActionsRequired fromValue(String value) {
    for (final item in ActionsRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionsRequired value: $value');
  }
}
