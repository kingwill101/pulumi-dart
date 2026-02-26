enum TaskDefinitionPortMappingAppProtocol {
  http("http"),
  http2("http2"),
  grpc("grpc");

  const TaskDefinitionPortMappingAppProtocol(this.value);
  final String value;

  static TaskDefinitionPortMappingAppProtocol fromValue(String value) {
    for (final item in TaskDefinitionPortMappingAppProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TaskDefinitionPortMappingAppProtocol value: $value');
  }
}
