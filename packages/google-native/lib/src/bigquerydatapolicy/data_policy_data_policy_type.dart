/// Type of data policy.
enum DataPolicyDataPolicyType {
  dataPolicyTypeUnspecified("DATA_POLICY_TYPE_UNSPECIFIED"),
  columnLevelSecurityPolicy("COLUMN_LEVEL_SECURITY_POLICY"),
  dataMaskingPolicy("DATA_MASKING_POLICY");

  const DataPolicyDataPolicyType(this.value);
  final String value;

  static DataPolicyDataPolicyType fromValue(String value) {
    for (final item in DataPolicyDataPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataPolicyDataPolicyType value: $value');
  }
}
