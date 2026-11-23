import 'package:pulumi/pulumi.dart' as pulumi;

enum PortMappingAppProtocol implements pulumi.PulumiEnum<String> {
  hTTP("http"),
  hTTP2("http2"),
  gRPC("grpc");

  const PortMappingAppProtocol(this.wireValue);
  @override
  final String wireValue;

  static PortMappingAppProtocol fromValue(String value) {
    for (final item in PortMappingAppProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortMappingAppProtocol value: $value');
  }
}
