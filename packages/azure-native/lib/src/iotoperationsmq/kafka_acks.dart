/// The kafka acks to use.
enum KafkaAcks {
  zero("zero"),
  one("one"),
  all("all");

  const KafkaAcks(this.value);
  final String value;

  static KafkaAcks fromValue(String value) {
    for (final item in KafkaAcks.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaAcks value: $value');
  }
}

