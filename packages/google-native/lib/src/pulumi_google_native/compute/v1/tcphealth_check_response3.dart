// ignore_for_file: unused_element, unnecessary_cast

class TCPHealthCheckResponse3 {
  /// The TCP port number to which the health check prober sends packets. The default value is 80. Valid values are 1 through 65535.
  final int port;

  /// Not supported.
  final String portName;

  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final String portSpecification;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final String proxyHeader;

  /// Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection.
  final String request;

  /// Creates a content-based TCP health check. In addition to establishing a TCP connection, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  final String response;

  TCPHealthCheckResponse3({
    required this.port,
    required this.portName,
    required this.portSpecification,
    required this.proxyHeader,
    required this.request,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['portName'] = portName;
    map['portSpecification'] = portSpecification;
    map['proxyHeader'] = proxyHeader;
    map['request'] = request;
    map['response'] = response;
    return map;
  }

  factory TCPHealthCheckResponse3.fromMap(Map<String, dynamic> map) {
    return TCPHealthCheckResponse3(
      port: map['port'] as int,
      portName: map['portName'] as String,
      portSpecification: map['portSpecification'] as String,
      proxyHeader: map['proxyHeader'] as String,
      request: map['request'] as String,
      response: map['response'] as String,
    );
  }
}
