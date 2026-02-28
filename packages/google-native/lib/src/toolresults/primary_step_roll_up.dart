/// Rollup test status of multiple steps that were run with the same configuration as a group.
enum PrimaryStepRollUp {
  unset("unset"),
  success("success"),
  failure("failure"),
  inconclusive("inconclusive"),
  skipped("skipped"),
  flaky("flaky");

  const PrimaryStepRollUp(this.value);
  final String value;

  static PrimaryStepRollUp fromValue(String value) {
    for (final item in PrimaryStepRollUp.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrimaryStepRollUp value: $value');
  }
}

