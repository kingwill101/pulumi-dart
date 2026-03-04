/// The kafka acks to use.
enum KafkaAcks {
  zero("zero"),
  one("one"),
  all("all");

  const KafkaAcks(this.wireValue);
  final String wireValue;

  static KafkaAcks fromValue(String value) {
    for (final item in KafkaAcks.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaAcks value: $value');
  }
}
