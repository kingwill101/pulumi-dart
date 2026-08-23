/// The effect of the deny assignment. 'enforced' blocks access, 'audit' logs without blocking.
enum DenyAssignmentEffect {
  enforced("enforced"),
  audit("audit");

  const DenyAssignmentEffect(this.wireValue);
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
