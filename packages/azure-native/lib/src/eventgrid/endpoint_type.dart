/// Type of the endpoint for the event subscription destination.
enum EndpointType {
  valueWebHook("WebHook"),
  valueEventHub("EventHub"),
  valueStorageQueue("StorageQueue"),
  valueHybridConnection("HybridConnection"),
  valueServiceBusQueue("ServiceBusQueue"),
  valueServiceBusTopic("ServiceBusTopic"),
  valueAzureFunction("AzureFunction"),
  valueMonitorAlert("MonitorAlert"),
  valueNamespaceTopic("NamespaceTopic");

  const EndpointType(this.value);
  final String value;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}

