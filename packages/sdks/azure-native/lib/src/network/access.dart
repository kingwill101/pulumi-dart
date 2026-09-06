import 'package:pulumi/pulumi.dart' as pulumi;

/// The access type of the rule.
enum Access implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const Access(this.wireValue);
  @override
  final String wireValue;

  static Access fromValue(String value) {
    for (final item in Access.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Access value: $value');
  }
}
