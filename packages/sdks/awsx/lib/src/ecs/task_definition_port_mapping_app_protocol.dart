import 'package:pulumi/pulumi.dart' as pulumi;

enum TaskDefinitionPortMappingAppProtocol implements pulumi.PulumiEnum<String> {
  http("http"),
  http2("http2"),
  grpc("grpc");

  const TaskDefinitionPortMappingAppProtocol(this.wireValue);
  @override
  final String wireValue;

  static TaskDefinitionPortMappingAppProtocol fromValue(String value) {
    for (final item in TaskDefinitionPortMappingAppProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskDefinitionPortMappingAppProtocol value: $value');
  }
}
