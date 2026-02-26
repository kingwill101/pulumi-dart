/// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
enum CVSSAttackVector3 {
  attackVectorUnspecified("ATTACK_VECTOR_UNSPECIFIED"),
  attackVectorNetwork("ATTACK_VECTOR_NETWORK"),
  attackVectorAdjacent("ATTACK_VECTOR_ADJACENT"),
  attackVectorLocal("ATTACK_VECTOR_LOCAL"),
  attackVectorPhysical("ATTACK_VECTOR_PHYSICAL");

  const CVSSAttackVector3(this.value);
  final String value;

  static CVSSAttackVector3 fromValue(String value) {
    for (final item in CVSSAttackVector3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackVector3 value: $value');
  }
}
