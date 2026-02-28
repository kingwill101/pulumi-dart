// ignore_for_file: unused_element, unnecessary_cast

import 'tcphealth_check_port_specification_compute_v1.dart';
import 'tcphealth_check_proxy_header_compute_v1.dart';

class TCPHealthCheckComputeV1 {
  /// The TCP port number to which the health check prober sends packets. The default value is 80. Valid values are 1 through 65535.
  final int? port;

  /// Not supported.
  final String? portName;

  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final TCPHealthCheckPortSpecificationComputeV1? portSpecification;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final TCPHealthCheckProxyHeaderComputeV1? proxyHeader;

  /// Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection.
  final String? request;

  /// Creates a content-based TCP health check. In addition to establishing a TCP connection, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  final String? response;

  /// Creates a new [TCPHealthCheckComputeV1].
  /// [port] The TCP port number to which the health check prober sends packets. The default value is 80. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [portSpecification] Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [request] Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection.
  /// [response] Creates a content-based TCP health check. In addition to establishing a TCP connection, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  TCPHealthCheckComputeV1({
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final portNameValue = portName;
    if (portNameValue != null) {
      map['portName'] = portNameValue;
    }
    final portSpecificationValue = portSpecification;
    if (portSpecificationValue != null) {
      map['portSpecification'] = portSpecificationValue.value;
    }
    final proxyHeaderValue = proxyHeader;
    if (proxyHeaderValue != null) {
      map['proxyHeader'] = proxyHeaderValue.value;
    }
    final requestValue = request;
    if (requestValue != null) {
      map['request'] = requestValue;
    }
    final responseValue = response;
    if (responseValue != null) {
      map['response'] = responseValue;
    }
    return map;
  }

  factory TCPHealthCheckComputeV1.fromMap(Map<String, dynamic> map) {
    return TCPHealthCheckComputeV1(
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      portSpecification: map['portSpecification'] == null
          ? null
          : TCPHealthCheckPortSpecificationComputeV1.fromValue(
              map['portSpecification'] as String),
      proxyHeader: map['proxyHeader'] == null
          ? null
          : TCPHealthCheckProxyHeaderComputeV1.fromValue(
              map['proxyHeader'] as String),
      request: map['request'] == null ? null : map['request'] as String,
      response: map['response'] == null ? null : map['response'] as String,
    );
  }
}
