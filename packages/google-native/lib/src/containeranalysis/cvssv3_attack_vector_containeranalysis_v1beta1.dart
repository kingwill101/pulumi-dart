/// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
enum CVSSv3AttackVectorContaineranalysisV1beta1 {
  attackVectorUnspecified("ATTACK_VECTOR_UNSPECIFIED"),
  attackVectorNetwork("ATTACK_VECTOR_NETWORK"),
  attackVectorAdjacent("ATTACK_VECTOR_ADJACENT"),
  attackVectorLocal("ATTACK_VECTOR_LOCAL"),
  attackVectorPhysical("ATTACK_VECTOR_PHYSICAL");

  const CVSSv3AttackVectorContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSv3AttackVectorContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3AttackVectorContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CVSSv3AttackVectorContaineranalysisV1beta1 value: $value',
    );
  }
}
