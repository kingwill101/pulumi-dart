import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the device.
enum DeviceType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAzureStackEdge("AzureStackEdge");

  const DeviceType(this.wireValue);
  @override
  final String wireValue;

  static DeviceType fromValue(String value) {
    for (final item in DeviceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceType value: $value');
  }
}
