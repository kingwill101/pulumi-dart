enum SecretPermissions {
  valueAll("all"),
  valueGet("get"),
  valueList("list"),
  valueSet("set"),
  valueDelete("delete"),
  valueBackup("backup"),
  valueRestore("restore"),
  valueRecover("recover"),
  valuePurge("purge");

  const SecretPermissions(this.value);
  final String value;

  static SecretPermissions fromValue(String value) {
    for (final item in SecretPermissions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretPermissions value: $value');
  }
}

