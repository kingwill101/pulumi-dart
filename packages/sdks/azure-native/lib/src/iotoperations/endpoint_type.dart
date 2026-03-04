/// Endpoint Type.
enum EndpointType {
  dataExplorer("DataExplorer"),
  dataLakeStorage("DataLakeStorage"),
  fabricOneLake("FabricOneLake"),
  kafka("Kafka"),
  localStorage("LocalStorage"),
  mqtt("Mqtt");

  const EndpointType(this.wireValue);
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
