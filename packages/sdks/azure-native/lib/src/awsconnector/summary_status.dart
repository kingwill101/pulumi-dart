/// Property value
enum SummaryStatus {
  impaired("impaired"),
  initializing("initializing"),
  insufficientData("insufficient-data"),
  notApplicable("not-applicable"),
  ok("ok");

  const SummaryStatus(this.value);
  final String value;

  static SummaryStatus fromValue(String value) {
    for (final item in SummaryStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SummaryStatus value: $value');
  }
}

