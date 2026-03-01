enum SecuritySettingPurgeDataTypesItem {
  purgeDataTypeUnspecified("PURGE_DATA_TYPE_UNSPECIFIED"),
  dialogflowHistory("DIALOGFLOW_HISTORY");

  const SecuritySettingPurgeDataTypesItem(this.value);
  final String value;

  static SecuritySettingPurgeDataTypesItem fromValue(String value) {
    for (final item in SecuritySettingPurgeDataTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecuritySettingPurgeDataTypesItem value: $value',
    );
  }
}
