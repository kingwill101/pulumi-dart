/// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
enum DistributionPolicyTargetShape3 {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED"),
  even("EVEN");

  const DistributionPolicyTargetShape3(this.value);
  final String value;

  static DistributionPolicyTargetShape3 fromValue(String value) {
    for (final item in DistributionPolicyTargetShape3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionPolicyTargetShape3 value: $value');
  }
}
