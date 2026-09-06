import 'package:pulumi/pulumi.dart' as pulumi;

/// How ingress should communicate with this app backend service.
enum BackendProtocol implements pulumi.PulumiEnum<String> {
  valueGRPC("GRPC"),
  valueDefault("Default");

  const BackendProtocol(this.wireValue);
  @override
  final String wireValue;

  static BackendProtocol fromValue(String value) {
    for (final item in BackendProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendProtocol value: $value');
  }
}
