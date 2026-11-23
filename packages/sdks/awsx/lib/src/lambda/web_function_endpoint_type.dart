import 'package:pulumi/pulumi.dart' as pulumi;

enum WebFunctionEndpointType implements pulumi.PulumiEnum<String> {
  hOMEREGION("HomeRegion"),
  mULTIREGION("MultiRegion"),
  pERREGION("PerRegion");

  const WebFunctionEndpointType(this.wireValue);
  @override
  final String wireValue;

  static WebFunctionEndpointType fromValue(String value) {
    for (final item in WebFunctionEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebFunctionEndpointType value: $value');
  }
}
