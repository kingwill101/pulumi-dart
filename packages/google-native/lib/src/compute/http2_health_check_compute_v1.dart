// ignore_for_file: unused_element, unnecessary_cast

import 'http2_health_check_port_specification_compute_v1.dart';
import 'http2_health_check_proxy_header_compute_v1.dart';

class HTTP2HealthCheckComputeV1 {
  /// The value of the host header in the HTTP/2 health check request. If left empty (default value), the host header is set to the destination IP address to which health check packets are sent. The destination IP address depends on the type of load balancer. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#hc-packet-dest
  final String? host;

  /// The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  final int? port;

  /// Not supported.
  final String? portName;

  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final HTTP2HealthCheckPortSpecificationComputeV1? portSpecification;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final HTTP2HealthCheckProxyHeaderComputeV1? proxyHeader;

  /// The request path of the HTTP/2 health check request. The default value is /.
  final String? requestPath;

  /// Creates a content-based HTTP/2 health check. In addition to the required HTTP 200 (OK) status code, you can configure the health check to pass only when the backend sends this specific ASCII response string within the first 1024 bytes of the HTTP response body. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-http
  final String? response;

  /// Creates a new [HTTP2HealthCheckComputeV1].
  /// [host] The value of the host header in the HTTP/2 health check request. If left empty (default value), the host header is set to the destination IP address to which health check packets are sent. The destination IP address depends on the type of load balancer. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#hc-packet-dest
  /// [port] The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [portSpecification] Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [requestPath] The request path of the HTTP/2 health check request. The default value is /.
  /// [response] Creates a content-based HTTP/2 health check. In addition to the required HTTP 200 (OK) status code, you can configure the health check to pass only when the backend sends this specific ASCII response string within the first 1024 bytes of the HTTP response body. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-http
  HTTP2HealthCheckComputeV1({
    this.host,
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.requestPath,
    this.response,
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
    final requestPathValue = requestPath;
    if (requestPathValue != null) {
      map['requestPath'] = requestPathValue;
    }
    final responseValue = response;
    if (responseValue != null) {
      map['response'] = responseValue;
    }
    return map;
  }

  factory HTTP2HealthCheckComputeV1.fromMap(Map<String, dynamic> map) {
    return HTTP2HealthCheckComputeV1(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      portSpecification: map['portSpecification'] == null
          ? null
          : HTTP2HealthCheckPortSpecificationComputeV1.fromValue(
              map['portSpecification'] as String),
      proxyHeader: map['proxyHeader'] == null
          ? null
          : HTTP2HealthCheckProxyHeaderComputeV1.fromValue(
              map['proxyHeader'] as String),
      requestPath:
          map['requestPath'] == null ? null : map['requestPath'] as String,
      response: map['response'] == null ? null : map['response'] as String,
    );
  }
}
