enum EnterpriseCrmEventbusProtoTaskMetadataExternalCategory {
  unspecifiedExternalCategory("UNSPECIFIED_EXTERNAL_CATEGORY"),
  core("CORE"),
  connectors("CONNECTORS"),
  externalHttp("EXTERNAL_HTTP"),
  externalIntegrationServices("EXTERNAL_INTEGRATION_SERVICES"),
  externalCustomerActions("EXTERNAL_CUSTOMER_ACTIONS"),
  externalFlowControl("EXTERNAL_FLOW_CONTROL"),
  externalWorkspace("EXTERNAL_WORKSPACE"),
  externalSecurity("EXTERNAL_SECURITY"),
  externalDatabases("EXTERNAL_DATABASES"),
  externalAnalytics("EXTERNAL_ANALYTICS"),
  externalByoc("EXTERNAL_BYOC"),
  externalByot("EXTERNAL_BYOT"),
  externalArtificialInteligence("EXTERNAL_ARTIFICIAL_INTELIGENCE"),
  externalDataManipulation("EXTERNAL_DATA_MANIPULATION");

  const EnterpriseCrmEventbusProtoTaskMetadataExternalCategory(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoTaskMetadataExternalCategory fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoTaskMetadataExternalCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoTaskMetadataExternalCategory value: $value');
  }
}

