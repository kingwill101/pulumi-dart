/// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
enum DistributionPolicyTargetShape2 {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED"),
  even("EVEN");

  const DistributionPolicyTargetShape2(this.value);
  final String value;

  static DistributionPolicyTargetShape2 fromValue(String value) {
    for (final item in DistributionPolicyTargetShape2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionPolicyTargetShape2 value: $value');
  }
}
