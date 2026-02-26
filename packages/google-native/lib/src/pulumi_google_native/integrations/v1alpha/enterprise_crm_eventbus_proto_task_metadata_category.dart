enum EnterpriseCrmEventbusProtoTaskMetadataCategory {
  unspecifiedCategory("UNSPECIFIED_CATEGORY"),
  custom("CUSTOM"),
  flowControl("FLOW_CONTROL"),
  dataManipulation("DATA_MANIPULATION"),
  scripting("SCRIPTING"),
  connector("CONNECTOR"),
  hidden("HIDDEN"),
  cloudSystems("CLOUD_SYSTEMS"),
  customTaskTemplate("CUSTOM_TASK_TEMPLATE"),
  taskRecommendations("TASK_RECOMMENDATIONS");

  const EnterpriseCrmEventbusProtoTaskMetadataCategory(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoTaskMetadataCategory fromValue(
      String value) {
    for (final item in EnterpriseCrmEventbusProtoTaskMetadataCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoTaskMetadataCategory value: $value');
  }
}
