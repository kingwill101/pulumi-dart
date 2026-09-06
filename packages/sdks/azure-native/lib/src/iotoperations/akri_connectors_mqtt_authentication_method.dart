import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication method for the MQTT connection.
enum AkriConnectorsMqttAuthenticationMethod implements pulumi.PulumiEnum<String> {
  serviceAccountToken("ServiceAccountToken");

  const AkriConnectorsMqttAuthenticationMethod(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorsMqttAuthenticationMethod fromValue(String value) {
    for (final item in AkriConnectorsMqttAuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsMqttAuthenticationMethod value: $value');
  }
}
