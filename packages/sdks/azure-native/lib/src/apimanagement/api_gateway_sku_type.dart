/// Name of the Sku.
enum ApiGatewaySkuType {
  valueStandard("Standard"),
  valueWorkspaceGatewayStandard("WorkspaceGatewayStandard"),
  valueWorkspaceGatewayPremium("WorkspaceGatewayPremium");

  const ApiGatewaySkuType(this.value);
  final String value;

  static ApiGatewaySkuType fromValue(String value) {
    for (final item in ApiGatewaySkuType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiGatewaySkuType value: $value');
  }
}

