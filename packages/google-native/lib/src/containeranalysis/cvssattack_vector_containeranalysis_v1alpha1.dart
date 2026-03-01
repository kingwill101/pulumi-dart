/// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
enum CVSSAttackVectorContaineranalysisV1alpha1 {
  attackVectorUnspecified("ATTACK_VECTOR_UNSPECIFIED"),
  attackVectorNetwork("ATTACK_VECTOR_NETWORK"),
  attackVectorAdjacent("ATTACK_VECTOR_ADJACENT"),
  attackVectorLocal("ATTACK_VECTOR_LOCAL"),
  attackVectorPhysical("ATTACK_VECTOR_PHYSICAL");

  const CVSSAttackVectorContaineranalysisV1alpha1(this.value);
  final String value;

  static CVSSAttackVectorContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSAttackVectorContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CVSSAttackVectorContaineranalysisV1alpha1 value: $value',
    );
  }
}
