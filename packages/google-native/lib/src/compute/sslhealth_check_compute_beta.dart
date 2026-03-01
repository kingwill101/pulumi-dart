// ignore_for_file: unused_element, unnecessary_cast

import 'sslhealth_check_port_specification_compute_beta.dart';
import 'sslhealth_check_proxy_header_compute_beta.dart';

class SSLHealthCheckComputeBeta {
  /// The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  final int? port;

  /// Not supported.
  final String? portName;

  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final SSLHealthCheckPortSpecificationComputeBeta? portSpecification;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final SSLHealthCheckProxyHeaderComputeBeta? proxyHeader;

  /// Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection and SSL handshake.
  final String? request;

  /// Creates a content-based SSL health check. In addition to establishing a TCP connection and the TLS handshake, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  final String? response;

  /// Creates a new [SSLHealthCheckComputeBeta].
  /// [port] The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [portSpecification] Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [request] Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection and SSL handshake.
  /// [response] Creates a content-based SSL health check. In addition to establishing a TCP connection and the TLS handshake, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  SSLHealthCheckComputeBeta({
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?portSpecification == null
          ? null
          : portSpecification!.value,
      'proxyHeader': ?proxyHeader == null ? null : proxyHeader!.value,
      'request': ?request,
      'response': ?response,
    };
  }

  factory SSLHealthCheckComputeBeta.fromMap(Map<String, dynamic> map) {
    return SSLHealthCheckComputeBeta(
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      portSpecification: map['portSpecification'] == null
          ? null
          : SSLHealthCheckPortSpecificationComputeBeta.fromValue(
              map['portSpecification'] as String,
            ),
      proxyHeader: map['proxyHeader'] == null
          ? null
          : SSLHealthCheckProxyHeaderComputeBeta.fromValue(
              map['proxyHeader'] as String,
            ),
      request: map['request'] == null ? null : map['request'] as String,
      response: map['response'] == null ? null : map['response'] as String,
    );
  }
}
