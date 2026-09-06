import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets correlation protocol to use for Application Insights diagnostics.
enum HttpCorrelationProtocol implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueLegacy("Legacy"),
  valueW3C("W3C");

  const HttpCorrelationProtocol(this.wireValue);
  @override
  final String wireValue;

  static HttpCorrelationProtocol fromValue(String value) {
    for (final item in HttpCorrelationProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpCorrelationProtocol value: $value');
  }
}
