enum SecuritySettingPurgeDataTypesItem2 {
  purgeDataTypeUnspecified("PURGE_DATA_TYPE_UNSPECIFIED"),
  dialogflowHistory("DIALOGFLOW_HISTORY");

  const SecuritySettingPurgeDataTypesItem2(this.value);
  final String value;

  static SecuritySettingPurgeDataTypesItem2 fromValue(String value) {
    for (final item in SecuritySettingPurgeDataTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecuritySettingPurgeDataTypesItem2 value: $value');
  }
}
