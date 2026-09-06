import 'package:pulumi/pulumi.dart' as pulumi;

enum PrincipalType implements pulumi.PulumiEnum<String> {
  user("user"),
  servicePrincipal("servicePrincipal"),
  group("group");

  const PrincipalType(this.wireValue);
  @override
  final String wireValue;

  static PrincipalType fromValue(String value) {
    for (final item in PrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalType value: $value');
  }
}
