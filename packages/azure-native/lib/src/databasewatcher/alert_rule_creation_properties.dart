/// The properties with which the alert rule resource was created.
enum AlertRuleCreationProperties {
  createdWithActionGroup("CreatedWithActionGroup"),
  none("None");

  const AlertRuleCreationProperties(this.value);
  final String value;

  static AlertRuleCreationProperties fromValue(String value) {
    for (final item in AlertRuleCreationProperties.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleCreationProperties value: $value');
  }
}

