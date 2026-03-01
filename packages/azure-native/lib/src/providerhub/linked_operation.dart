/// The linked operation.
enum LinkedOperation {
  none("None"),
  crossResourceGroupResourceMove("CrossResourceGroupResourceMove"),
  crossSubscriptionResourceMove("CrossSubscriptionResourceMove");

  const LinkedOperation(this.value);
  final String value;

  static LinkedOperation fromValue(String value) {
    for (final item in LinkedOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedOperation value: $value');
  }
}

