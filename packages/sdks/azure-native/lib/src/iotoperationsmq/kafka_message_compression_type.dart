import 'package:pulumi/pulumi.dart' as pulumi;

/// The compression to use for kafka messages.
enum KafkaMessageCompressionType implements pulumi.PulumiEnum<String> {
  none("none"),
  gzip("gzip"),
  snappy("snappy"),
  lz4("lz4");

  const KafkaMessageCompressionType(this.wireValue);
  @override
  final String wireValue;

  static KafkaMessageCompressionType fromValue(String value) {
    for (final item in KafkaMessageCompressionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaMessageCompressionType value: $value');
  }
}
