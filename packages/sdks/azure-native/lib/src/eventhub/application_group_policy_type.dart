/// Application Group Policy types
enum ApplicationGroupPolicyType {
  valueThrottlingPolicy("ThrottlingPolicy");

  const ApplicationGroupPolicyType(this.value);
  final String value;

  static ApplicationGroupPolicyType fromValue(String value) {
    for (final item in ApplicationGroupPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGroupPolicyType value: $value');
  }
}

