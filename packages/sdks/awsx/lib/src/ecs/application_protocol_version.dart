import 'package:pulumi/pulumi.dart' as pulumi;

enum ApplicationProtocolVersion implements pulumi.PulumiEnum<String> {
  hTTP1("HTTP1"),
  hTTP2("HTTP2"),
  gRPC("GRPC");

  const ApplicationProtocolVersion(this.wireValue);
  @override
  final String wireValue;

  static ApplicationProtocolVersion fromValue(String value) {
    for (final item in ApplicationProtocolVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationProtocolVersion value: $value');
  }
}
