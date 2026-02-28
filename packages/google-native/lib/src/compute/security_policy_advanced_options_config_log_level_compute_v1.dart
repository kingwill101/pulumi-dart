enum SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1 {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1 value: $value');
  }
}

