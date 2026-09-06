import 'package:pulumi/pulumi.dart' as pulumi;

enum SecretPermissions implements pulumi.PulumiEnum<String> {
  valueAll("all"),
  valueGet("get"),
  valueList("list"),
  valueSet("set"),
  valueDelete("delete"),
  valueBackup("backup"),
  valueRestore("restore"),
  valueRecover("recover"),
  valuePurge("purge");

  const SecretPermissions(this.wireValue);
  @override
  final String wireValue;

  static SecretPermissions fromValue(String value) {
    for (final item in SecretPermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretPermissions value: $value');
  }
}
