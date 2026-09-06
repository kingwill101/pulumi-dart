import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum SummaryStatus implements pulumi.PulumiEnum<String> {
  impaired("impaired"),
  initializing("initializing"),
  insufficientData("insufficient-data"),
  notApplicable("not-applicable"),
  ok("ok");

  const SummaryStatus(this.wireValue);
  @override
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
