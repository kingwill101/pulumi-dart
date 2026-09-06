import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes operator to be matched
enum SslProtocolOperator implements pulumi.PulumiEnum<String> {
  equal("Equal");

  const SslProtocolOperator(this.wireValue);
  @override
  final String wireValue;

  static SslProtocolOperator fromValue(String value) {
    for (final item in SslProtocolOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslProtocolOperator value: $value');
  }
}
