/// [Required] Name of policy configuration
enum EarlyTerminationPolicyType {
  valueBandit("Bandit"),
  valueMedianStopping("MedianStopping"),
  valueTruncationSelection("TruncationSelection");

  const EarlyTerminationPolicyType(this.value);
  final String value;

  static EarlyTerminationPolicyType fromValue(String value) {
    for (final item in EarlyTerminationPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EarlyTerminationPolicyType value: $value');
  }
}

