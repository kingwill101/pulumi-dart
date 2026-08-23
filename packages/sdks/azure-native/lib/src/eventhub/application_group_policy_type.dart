/// Application Group Policy types
enum ApplicationGroupPolicyType {
  valueThrottlingPolicy("ThrottlingPolicy");

  const ApplicationGroupPolicyType(this.wireValue);
  final String wireValue;

  static ApplicationGroupPolicyType fromValue(String value) {
    for (final item in ApplicationGroupPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGroupPolicyType value: $value');
  }
}
