/// The kind of event type used.
enum EventDefinitionKind {
  valueInline("Inline");

  const EventDefinitionKind(this.value);
  final String value;

  static EventDefinitionKind fromValue(String value) {
    for (final item in EventDefinitionKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDefinitionKind value: $value');
  }
}

