/// Sasl Mechanism for remote broker authentication.
enum KafkaSaslType {
  plain("plain"),
  scramSha256("scramSha256"),
  scramSha512("scramSha512");

  const KafkaSaslType(this.wireValue);
  final String wireValue;

  static KafkaSaslType fromValue(String value) {
    for (final item in KafkaSaslType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaSaslType value: $value');
  }
}

