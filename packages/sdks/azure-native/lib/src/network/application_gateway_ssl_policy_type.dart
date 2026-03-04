/// Type of Ssl Policy.
enum ApplicationGatewaySslPolicyType {
  valuePredefined("Predefined"),
  valueCustom("Custom"),
  valueCustomV2("CustomV2");

  const ApplicationGatewaySslPolicyType(this.wireValue);
  final String wireValue;

  static ApplicationGatewaySslPolicyType fromValue(String value) {
    for (final item in ApplicationGatewaySslPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ApplicationGatewaySslPolicyType value: $value',
    );
  }
}
