/// The priority of this case.
enum CasePriority {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  p0("P0"),
  p1("P1"),
  p2("P2"),
  p3("P3"),
  p4("P4");

  const CasePriority(this.value);
  final String value;

  static CasePriority fromValue(String value) {
    for (final item in CasePriority.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CasePriority value: $value');
  }
}
