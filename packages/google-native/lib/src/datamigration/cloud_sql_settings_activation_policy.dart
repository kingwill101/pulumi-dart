/// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
enum CloudSqlSettingsActivationPolicy {
  sqlActivationPolicyUnspecified("SQL_ACTIVATION_POLICY_UNSPECIFIED"),
  always("ALWAYS"),
  never("NEVER");

  const CloudSqlSettingsActivationPolicy(this.value);
  final String value;

  static CloudSqlSettingsActivationPolicy fromValue(String value) {
    for (final item in CloudSqlSettingsActivationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CloudSqlSettingsActivationPolicy value: $value');
  }
}
