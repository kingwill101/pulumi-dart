enum CertificatePermissions {
  valueAll("all"),
  valueGet("get"),
  valueList("list"),
  valueDelete("delete"),
  valueCreate("create"),
  valueImport("import"),
  valueUpdate("update"),
  valueManagecontacts("managecontacts"),
  valueGetissuers("getissuers"),
  valueListissuers("listissuers"),
  valueSetissuers("setissuers"),
  valueDeleteissuers("deleteissuers"),
  valueManageissuers("manageissuers"),
  valueRecover("recover"),
  valuePurge("purge"),
  valueBackup("backup"),
  valueRestore("restore");

  const CertificatePermissions(this.wireValue);
  final String wireValue;

  static CertificatePermissions fromValue(String value) {
    for (final item in CertificatePermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificatePermissions value: $value');
  }
}

