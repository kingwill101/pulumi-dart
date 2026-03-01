/// Identity Type.
enum KafkaConfigurationIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const KafkaConfigurationIdentityType(this.value);
  final String value;

  static KafkaConfigurationIdentityType fromValue(String value) {
    for (final item in KafkaConfigurationIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaConfigurationIdentityType value: $value');
  }
}

