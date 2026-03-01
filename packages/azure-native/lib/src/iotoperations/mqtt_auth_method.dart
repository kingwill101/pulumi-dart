/// Mode of Authentication.
enum MqttAuthMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  serviceAccountToken("ServiceAccountToken"),
  x509Certificate("X509Certificate"),
  anonymous("Anonymous");

  const MqttAuthMethod(this.value);
  final String value;

  static MqttAuthMethod fromValue(String value) {
    for (final item in MqttAuthMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttAuthMethod value: $value');
  }
}

