import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicate whether the policy allows or denies access.
enum PolicyStatementEffect implements pulumi.PulumiEnum<String> {
  aLLOW("Allow"),
  dENY("Deny");

  const PolicyStatementEffect(this.wireValue);
  @override
  final String wireValue;

  static PolicyStatementEffect fromValue(String value) {
    for (final item in PolicyStatementEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyStatementEffect value: $value');
  }
}
