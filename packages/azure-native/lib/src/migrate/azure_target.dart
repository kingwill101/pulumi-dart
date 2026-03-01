/// Azure Target
enum AzureTarget {
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

  const AzureTarget(this.value);
  final String value;

  static AzureTarget fromValue(String value) {
    for (final item in AzureTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureTarget value: $value');
  }
}

