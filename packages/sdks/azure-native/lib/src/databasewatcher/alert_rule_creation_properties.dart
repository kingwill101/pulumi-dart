/// The properties with which the alert rule resource was created.
enum AlertRuleCreationProperties {
  createdWithActionGroup("CreatedWithActionGroup"),
  none("None");

  const AlertRuleCreationProperties(this.wireValue);
  final String wireValue;

  static AlertRuleCreationProperties fromValue(String value) {
    for (final item in AlertRuleCreationProperties.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleCreationProperties value: $value');
  }
}

