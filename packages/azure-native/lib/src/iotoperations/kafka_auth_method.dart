/// Mode of Authentication.
enum KafkaAuthMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  sasl("Sasl"),
  x509Certificate("X509Certificate"),
  anonymous("Anonymous");

  const KafkaAuthMethod(this.value);
  final String value;

  static KafkaAuthMethod fromValue(String value) {
    for (final item in KafkaAuthMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaAuthMethod value: $value');
  }
}

