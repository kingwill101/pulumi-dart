import 'package:pulumi/pulumi.dart' as pulumi;

enum KeyPermissions implements pulumi.PulumiEnum<String> {
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

  const KeyPermissions(this.wireValue);
  @override
  final String wireValue;

  static KeyPermissions fromValue(String value) {
    for (final item in KeyPermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyPermissions value: $value');
  }
}
