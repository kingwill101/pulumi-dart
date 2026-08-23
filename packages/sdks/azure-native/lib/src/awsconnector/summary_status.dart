/// Property value
enum SummaryStatus {
  impaired("impaired"),
  initializing("initializing"),
  insufficientData("insufficient-data"),
  notApplicable("not-applicable"),
  ok("ok");

  const SummaryStatus(this.wireValue);
  final String wireValue;

  static SummaryStatus fromValue(String value) {
    for (final item in SummaryStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SummaryStatus value: $value');
  }
}
