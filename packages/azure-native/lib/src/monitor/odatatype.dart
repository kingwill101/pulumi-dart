/// specifies the type of the alert criteria.
enum Odatatype {
  valueMicrosoftAzureMonitorSingleResourceMultipleMetricCriteria("Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria"),
  valueMicrosoftAzureMonitorMultipleResourceMultipleMetricCriteria("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
  valueMicrosoftAzureMonitorWebtestLocationAvailabilityCriteria("Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria");

  const Odatatype(this.value);
  final String value;

  static Odatatype fromValue(String value) {
    for (final item in Odatatype.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Odatatype value: $value');
  }
}

