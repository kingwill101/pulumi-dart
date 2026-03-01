enum IndividualOutcomeOutcomeSummary {
  unset("unset"),
  success("success"),
  failure("failure"),
  inconclusive("inconclusive"),
  skipped("skipped"),
  flaky("flaky");

  const IndividualOutcomeOutcomeSummary(this.value);
  final String value;

  static IndividualOutcomeOutcomeSummary fromValue(String value) {
    for (final item in IndividualOutcomeOutcomeSummary.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IndividualOutcomeOutcomeSummary value: $value',
    );
  }
}
