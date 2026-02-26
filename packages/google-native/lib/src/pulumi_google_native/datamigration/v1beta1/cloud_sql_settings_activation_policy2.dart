/// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
enum CloudSqlSettingsActivationPolicy2 {
  sqlActivationPolicyUnspecified("SQL_ACTIVATION_POLICY_UNSPECIFIED"),
  always("ALWAYS"),
  never("NEVER");

  const CloudSqlSettingsActivationPolicy2(this.value);
  final String value;

  static CloudSqlSettingsActivationPolicy2 fromValue(String value) {
    for (final item in CloudSqlSettingsActivationPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CloudSqlSettingsActivationPolicy2 value: $value');
  }
}
