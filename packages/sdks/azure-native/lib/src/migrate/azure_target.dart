import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Target
enum AzureTarget implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  sqlDatabase("SqlDatabase"),
  sqlMI("SqlMI"),
  flexServerPG("FlexServerPG"),
  oracleIaasVM("OracleIaasVM"),
  azureSpringApps("AzureSpringApps"),
  sAPAzureInstance("SAPAzureInstance"),
  aKS("AKS"),
  mySQLAzureFlexServer("MySQLAzureFlexServer"),
  azureSQLVM("AzureSQLVM"),
  azureVM("AzureVM"),
  azureAppService("AzureAppService"),
  azureAppServiceContainer("AzureAppServiceContainer"),
  avs("Avs");

  const AzureTarget(this.wireValue);
  @override
  final String wireValue;

  static AzureTarget fromValue(String value) {
    for (final item in AzureTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureTarget value: $value');
  }
}
