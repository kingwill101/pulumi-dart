import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the Sku.
enum ApiGatewaySkuType implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueWorkspaceGatewayStandard("WorkspaceGatewayStandard"),
  valueWorkspaceGatewayPremium("WorkspaceGatewayPremium");

  const ApiGatewaySkuType(this.wireValue);
  @override
  final String wireValue;

  static ApiGatewaySkuType fromValue(String value) {
    for (final item in ApiGatewaySkuType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiGatewaySkuType value: $value');
  }
}
