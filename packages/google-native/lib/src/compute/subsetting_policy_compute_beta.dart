enum SubsettingPolicyComputeBeta {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicyComputeBeta(this.value);
  final String value;

  static SubsettingPolicyComputeBeta fromValue(String value) {
    for (final item in SubsettingPolicyComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicyComputeBeta value: $value');
  }
}

