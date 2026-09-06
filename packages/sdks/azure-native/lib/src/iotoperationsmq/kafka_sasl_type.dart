import 'package:pulumi/pulumi.dart' as pulumi;

/// Sasl Mechanism for remote broker authentication.
enum KafkaSaslType implements pulumi.PulumiEnum<String> {
  plain("plain"),
  scramSha256("scramSha256"),
  scramSha512("scramSha512");

  const KafkaSaslType(this.wireValue);
  @override
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
