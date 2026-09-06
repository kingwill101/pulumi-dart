import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the endpoint for the event subscription destination.
enum EndpointType implements pulumi.PulumiEnum<String> {
  valueWebHook("WebHook"),
  valueEventHub("EventHub"),
  valueStorageQueue("StorageQueue"),
  valueHybridConnection("HybridConnection"),
  valueServiceBusQueue("ServiceBusQueue"),
  valueServiceBusTopic("ServiceBusTopic"),
  valueAzureFunction("AzureFunction"),
  valueMonitorAlert("MonitorAlert"),
  valueNamespaceTopic("NamespaceTopic");

  const EndpointType(this.wireValue);
  @override
  final String wireValue;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}
