import 'package:pulumi/pulumi.dart' as pulumi;

/// Endpoint Type.
enum EndpointType implements pulumi.PulumiEnum<String> {
  dataExplorer("DataExplorer"),
  dataLakeStorage("DataLakeStorage"),
  fabricOneLake("FabricOneLake"),
  kafka("Kafka"),
  localStorage("LocalStorage"),
  mqtt("Mqtt");

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
