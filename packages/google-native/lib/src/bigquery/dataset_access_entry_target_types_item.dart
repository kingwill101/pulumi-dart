enum DatasetAccessEntryTargetTypesItem {
  targetTypeUnspecified("TARGET_TYPE_UNSPECIFIED"),
  views("VIEWS"),
  routines("ROUTINES");

  const DatasetAccessEntryTargetTypesItem(this.value);
  final String value;

  static DatasetAccessEntryTargetTypesItem fromValue(String value) {
    for (final item in DatasetAccessEntryTargetTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetAccessEntryTargetTypesItem value: $value');
  }
}

