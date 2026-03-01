enum SecuritySettingPurgeDataTypesItemDialogflowV3beta1 {
  purgeDataTypeUnspecified("PURGE_DATA_TYPE_UNSPECIFIED"),
  dialogflowHistory("DIALOGFLOW_HISTORY");

  const SecuritySettingPurgeDataTypesItemDialogflowV3beta1(this.value);
  final String value;

  static SecuritySettingPurgeDataTypesItemDialogflowV3beta1 fromValue(
    String value,
  ) {
    for (final item
        in SecuritySettingPurgeDataTypesItemDialogflowV3beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecuritySettingPurgeDataTypesItemDialogflowV3beta1 value: $value',
    );
  }
}
