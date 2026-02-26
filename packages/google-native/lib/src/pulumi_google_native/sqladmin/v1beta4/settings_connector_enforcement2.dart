/// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
enum SettingsConnectorEnforcement2 {
  connectorEnforcementUnspecified("CONNECTOR_ENFORCEMENT_UNSPECIFIED"),
  notRequired("NOT_REQUIRED"),
  required("REQUIRED");

  const SettingsConnectorEnforcement2(this.value);
  final String value;

  static SettingsConnectorEnforcement2 fromValue(String value) {
    for (final item in SettingsConnectorEnforcement2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsConnectorEnforcement2 value: $value');
  }
}
