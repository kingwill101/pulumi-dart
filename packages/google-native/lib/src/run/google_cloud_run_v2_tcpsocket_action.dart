// ignore_for_file: unused_element, unnecessary_cast

/// TCPSocketAction describes an action based on opening a socket
class GoogleCloudRunV2TCPSocketAction {
  /// Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int? port;

  /// Creates a new [GoogleCloudRunV2TCPSocketAction].
  /// [port] Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  GoogleCloudRunV2TCPSocketAction({
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory GoogleCloudRunV2TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TCPSocketAction(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
