import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of endpoint for the virtual endpoints.
enum VirtualEndpointType implements pulumi.PulumiEnum<String> {
  readWrite("ReadWrite");

  const VirtualEndpointType(this.wireValue);
  @override
  final String wireValue;

  static VirtualEndpointType fromValue(String value) {
    for (final item in VirtualEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualEndpointType value: $value');
  }
}
