import 'package:pulumi/pulumi.dart' as pulumi;

/// specifies the type of the alert criteria.
enum Odatatype implements pulumi.PulumiEnum<String> {
  valueMicrosoftAzureMonitorSingleResourceMultipleMetricCriteria("Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria"),
  valueMicrosoftAzureMonitorMultipleResourceMultipleMetricCriteria("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
  valueMicrosoftAzureMonitorWebtestLocationAvailabilityCriteria("Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria");

  const Odatatype(this.wireValue);
  @override
  final String wireValue;

  static Odatatype fromValue(String value) {
    for (final item in Odatatype.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Odatatype value: $value');
  }
}
