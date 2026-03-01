/// Sasl Mechanism for remote broker authentication.
enum KafkaSaslType {
  plain("plain"),
  scramSha256("scramSha256"),
  scramSha512("scramSha512");

  const KafkaSaslType(this.value);
  final String value;

  static KafkaSaslType fromValue(String value) {
    for (final item in KafkaSaslType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaSaslType value: $value');
  }
}

