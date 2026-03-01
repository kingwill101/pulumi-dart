enum KeyPermissions {
  valueAll("all"),
  valueEncrypt("encrypt"),
  valueDecrypt("decrypt"),
  valueWrapKey("wrapKey"),
  valueUnwrapKey("unwrapKey"),
  valueSign("sign"),
  valueVerify("verify"),
  valueGet("get"),
  valueList("list"),
  valueCreate("create"),
  valueUpdate("update"),
  valueImport("import"),
  valueDelete("delete"),
  valueBackup("backup"),
  valueRestore("restore"),
  valueRecover("recover"),
  valuePurge("purge"),
  valueRelease("release"),
  valueRotate("rotate"),
  valueGetrotationpolicy("getrotationpolicy"),
  valueSetrotationpolicy("setrotationpolicy");

  const KeyPermissions(this.value);
  final String value;

  static KeyPermissions fromValue(String value) {
    for (final item in KeyPermissions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyPermissions value: $value');
  }
}

