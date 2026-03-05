/// Mode of Authentication.
enum KafkaAuthMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  sasl("Sasl"),
  x509Certificate("X509Certificate"),
  anonymous("Anonymous");

  const KafkaAuthMethod(this.wireValue);
  final String wireValue;

  static KafkaAuthMethod fromValue(String value) {
    for (final item in KafkaAuthMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaAuthMethod value: $value');
  }
}

