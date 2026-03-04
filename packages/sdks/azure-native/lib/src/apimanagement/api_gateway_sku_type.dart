/// Name of the Sku.
enum ApiGatewaySkuType {
  valueStandard("Standard"),
  valueWorkspaceGatewayStandard("WorkspaceGatewayStandard"),
  valueWorkspaceGatewayPremium("WorkspaceGatewayPremium");

  const ApiGatewaySkuType(this.wireValue);
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
