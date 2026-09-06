import 'package:pulumi/pulumi.dart' as pulumi;

/// The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
enum DenyAssignmentEffect implements pulumi.PulumiEnum<String> {
  enforced("enforced"),
  audit("audit");

  const DenyAssignmentEffect(this.wireValue);
  @override
  final String wireValue;

  static DenyAssignmentEffect fromValue(String value) {
    for (final item in DenyAssignmentEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DenyAssignmentEffect value: $value');
  }
}
