import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of Authentication.
enum MqttAuthMethod implements pulumi.PulumiEnum<String> {
  systemAssignedManagedIdentity("SystemAssignedManagedIdentity"),
  userAssignedManagedIdentity("UserAssignedManagedIdentity"),
  serviceAccountToken("ServiceAccountToken"),
  x509Certificate("X509Certificate"),
  anonymous("Anonymous");

  const MqttAuthMethod(this.wireValue);
  @override
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
