/// specifies the type of the alert criteria.
enum Odatatype {
  valueMicrosoftAzureMonitorSingleResourceMultipleMetricCriteria("Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria"),
  valueMicrosoftAzureMonitorMultipleResourceMultipleMetricCriteria("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
  valueMicrosoftAzureMonitorWebtestLocationAvailabilityCriteria("Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria");

  const Odatatype(this.wireValue);
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
