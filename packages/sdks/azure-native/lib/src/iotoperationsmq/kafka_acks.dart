import 'package:pulumi/pulumi.dart' as pulumi;

/// The kafka acks to use.
enum KafkaAcks implements pulumi.PulumiEnum<String> {
  zero("zero"),
  one("one"),
  all("all");

  const KafkaAcks(this.wireValue);
  @override
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
