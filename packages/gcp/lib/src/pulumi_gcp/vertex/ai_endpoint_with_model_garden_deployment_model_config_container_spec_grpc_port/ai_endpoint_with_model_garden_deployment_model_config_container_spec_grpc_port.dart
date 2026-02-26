// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort {
  /// The number of the port to expose on the pod's IP address.
  /// Must be a valid port number, between 1 and 65535 inclusive.
  final int? containerPort;

  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort({
    this.containerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort(
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
    );
  }
}
