enum IntegrationPassthroughBehavior {
  valueWhenNoMatch("when_no_match"),
  valueWhenNoTemplates("when_no_templates"),
  valueNever("never");

  const IntegrationPassthroughBehavior(this.value);
  final String value;

  static IntegrationPassthroughBehavior fromValue(String value) {
    for (final item in IntegrationPassthroughBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationPassthroughBehavior value: $value');
  }
}

