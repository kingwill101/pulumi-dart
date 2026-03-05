/// Mode of Authentication.
enum MqttAuthMethod {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  serviceAccountToken("ServiceAccountToken"),
  x509Certificate("X509Certificate"),
  anonymous("Anonymous");

  const MqttAuthMethod(this.wireValue);
  final String wireValue;

  static MqttAuthMethod fromValue(String value) {
    for (final item in MqttAuthMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttAuthMethod value: $value');
  }
}

