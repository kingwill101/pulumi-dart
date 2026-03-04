/// Type of the callout service, specifying the kind of external resource or service being accessed.
enum CalloutType {
  valueKusto("kusto"),
  valueSql("sql"),
  valueCosmosdb("cosmosdb"),
  valueExternalData("external_data"),
  valueAzureDigitalTwins("azure_digital_twins"),
  valueSandboxArtifacts("sandbox_artifacts"),
  valueWebapi("webapi"),
  valueMysql("mysql"),
  valuePostgresql("postgresql"),
  valueGenevametrics("genevametrics"),
  valueAzureOpenai("azure_openai");

  const CalloutType(this.wireValue);
  final String wireValue;

  static CalloutType fromValue(String value) {
    for (final item in CalloutType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CalloutType value: $value');
  }
}
