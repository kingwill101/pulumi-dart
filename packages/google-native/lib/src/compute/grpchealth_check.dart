// ignore_for_file: unused_element, unnecessary_cast

import 'grpchealth_check_port_specification.dart';

class GRPCHealthCheck {
  /// The gRPC service name for the health check. This field is optional. The value of grpc_service_name has the following meanings by convention: - Empty service_name means the overall status of all services at the backend. - Non-empty service_name means the health of that gRPC service, as defined by the owner of the service. The grpc_service_name can only be ASCII.
  final String? grpcServiceName;
  /// The TCP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  final int? port;
  /// Not supported.
  final String? portName;
  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final GRPCHealthCheckPortSpecification? portSpecification;

  /// Creates a new [GRPCHealthCheck].
  /// [grpcServiceName] The gRPC service name for the health check. This field is optional. The value of grpc_service_name has the following meanings by convention: - Empty service_name means the overall status of all services at the backend. - Non-empty service_name means the health of that gRPC service, as defined by the owner of the service. The grpc_service_name can only be ASCII.
  /// [port] The TCP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [portSpecification] Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  GRPCHealthCheck({
    this.grpcServiceName,
    this.port,
    this.portName,
    this.portSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceName': ?grpcServiceName,
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?portSpecification == null ? null : portSpecification!.value,
    };
  }

  factory GRPCHealthCheck.fromMap(Map<String, dynamic> map) {
    return GRPCHealthCheck(
      grpcServiceName: map['grpcServiceName'] == null ? null : map['grpcServiceName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      portSpecification: map['portSpecification'] == null ? null : GRPCHealthCheckPortSpecification.fromValue(map['portSpecification'] as String),
    );
  }
}

