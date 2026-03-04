enum StoragePermissions {
  valueAll("all"),
  valueGet("get"),
  valueList("list"),
  valueDelete("delete"),
  valueSet("set"),
  valueUpdate("update"),
  valueRegeneratekey("regeneratekey"),
  valueRecover("recover"),
  valuePurge("purge"),
  valueBackup("backup"),
  valueRestore("restore"),
  valueSetsas("setsas"),
  valueListsas("listsas"),
  valueGetsas("getsas"),
  valueDeletesas("deletesas");

  const StoragePermissions(this.wireValue);
  final String wireValue;

  static StoragePermissions fromValue(String value) {
    for (final item in StoragePermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StoragePermissions value: $value');
  }
}
