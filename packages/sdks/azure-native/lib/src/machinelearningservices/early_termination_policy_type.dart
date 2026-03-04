/// [Required] Name of policy configuration
enum EarlyTerminationPolicyType {
  valueBandit("Bandit"),
  valueMedianStopping("MedianStopping"),
  valueTruncationSelection("TruncationSelection");

  const EarlyTerminationPolicyType(this.wireValue);
  final String wireValue;

  static EarlyTerminationPolicyType fromValue(String value) {
    for (final item in EarlyTerminationPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EarlyTerminationPolicyType value: $value');
  }
}
