import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum SSEType implements pulumi.PulumiEnum<String> {
  none("none"),
  sseEbs("sse-ebs"),
  sseKms("sse-kms");

  const SSEType(this.wireValue);
  @override
  final String wireValue;

  static SSEType fromValue(String value) {
    for (final item in SSEType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSEType value: $value');
  }
}
