// ignore_for_file: unused_element, unnecessary_cast


class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket {
  /// Optional: Host name to connect to, defaults to the model serving
  /// container's IP.
  final String? host;
  /// Number of the port to access on the container.
  /// Number must be in the range 1 to 65535.
  final int? port;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket].
  /// [host] Optional: Host name to connect to, defaults to the model serving
  /// [port] Number of the port to access on the container.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

