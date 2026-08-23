/// The kind of event type used.
enum EventDefinitionKind {
  valueInline("Inline");

  const EventDefinitionKind(this.wireValue);
  final String wireValue;

  static EventDefinitionKind fromValue(String value) {
    for (final item in EventDefinitionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDefinitionKind value: $value');
  }
}
