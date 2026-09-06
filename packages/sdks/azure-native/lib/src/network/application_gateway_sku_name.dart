import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of an application gateway SKU.
enum ApplicationGatewaySkuName implements pulumi.PulumiEnum<String> {
  valueStandardSmall("Standard_Small"),
  valueStandardMedium("Standard_Medium"),
  valueStandardLarge("Standard_Large"),
  valueWAFMedium("WAF_Medium"),
  valueWAFLarge("WAF_Large"),
  valueStandardV2("Standard_v2"),
  valueWAFV2("WAF_v2"),
  valueBasic("Basic");

  const ApplicationGatewaySkuName(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewaySkuName fromValue(String value) {
    for (final item in ApplicationGatewaySkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySkuName value: $value');
  }
}
