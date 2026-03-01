/// Type of Ssl Policy.
enum ApplicationGatewaySslPolicyType {
  valuePredefined("Predefined"),
  valueCustom("Custom"),
  valueCustomV2("CustomV2");

  const ApplicationGatewaySslPolicyType(this.value);
  final String value;

  static ApplicationGatewaySslPolicyType fromValue(String value) {
    for (final item in ApplicationGatewaySslPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySslPolicyType value: $value');
  }
}

