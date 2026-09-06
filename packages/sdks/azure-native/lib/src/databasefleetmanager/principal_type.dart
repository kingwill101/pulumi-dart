import 'package:pulumi/pulumi.dart' as pulumi;

/// Principal type of the main principal.
enum PrincipalType implements pulumi.PulumiEnum<String> {
  application("Application"),
  user("User");

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
