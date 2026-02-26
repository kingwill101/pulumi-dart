/// The priority of this case.
enum CasePriority2 {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  p0("P0"),
  p1("P1"),
  p2("P2"),
  p3("P3"),
  p4("P4");

  const CasePriority2(this.value);
  final String value;

  static CasePriority2 fromValue(String value) {
    for (final item in CasePriority2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CasePriority2 value: $value');
  }
}
