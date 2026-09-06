import 'package:pulumi/pulumi.dart' as pulumi;

/// The principal type of the user.
enum EntraPrincipalType implements pulumi.PulumiEnum<String> {
  user("user"),
  servicePrincipal("servicePrincipal");

  const EntraPrincipalType(this.wireValue);
  @override
  final String wireValue;

  static EntraPrincipalType fromValue(String value) {
    for (final item in EntraPrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntraPrincipalType value: $value');
  }
}
