enum TaskDefinitionPortMappingAppProtocol {
  http("http"),
  http2("http2"),
  grpc("grpc");

  const TaskDefinitionPortMappingAppProtocol(this.wireValue);
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

