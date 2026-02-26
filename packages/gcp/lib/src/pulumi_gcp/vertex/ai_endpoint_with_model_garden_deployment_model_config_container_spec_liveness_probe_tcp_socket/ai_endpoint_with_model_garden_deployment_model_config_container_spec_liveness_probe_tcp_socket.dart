// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket {
  /// Optional: Host name to connect to, defaults to the model serving
  /// container's IP.
  final String? host;

  /// Number of the port to access on the container.
  /// Number must be in the range 1 to 65535.
  final int? port;

  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
