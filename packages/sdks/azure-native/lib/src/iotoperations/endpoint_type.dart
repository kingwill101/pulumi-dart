/// Endpoint Type.
enum EndpointType {
  dataExplorer("DataExplorer"),
  dataLakeStorage("DataLakeStorage"),
  fabricOneLake("FabricOneLake"),
  kafka("Kafka"),
  localStorage("LocalStorage"),
  mqtt("Mqtt");

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

