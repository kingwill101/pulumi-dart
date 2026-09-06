import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure AVS Node type
enum AzureAvsNodeType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  aV36("AV36"),
  aV36P("AV36P"),
  aV52("AV52"),
  aV64("AV64");

  const AzureAvsNodeType(this.wireValue);
  @override
  final String wireValue;

  static AzureAvsNodeType fromValue(String value) {
    for (final item in AzureAvsNodeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureAvsNodeType value: $value');
  }
}
