// ignore_for_file: unused_element, unnecessary_cast

/// Message containing information of one individual backend.
class BackendResponseComputeBeta {
  /// Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see Connection balancing mode. Backends must use compatible balancing modes. For more information, see Supported balancing modes and target capacity settings and Restrictions and guidance for instance groups. Note: Currently, if you use the API to configure incompatible balancing modes, the configuration might be accepted even though it has no impact and is ignored. Specifically, Backend.maxUtilization is ignored when Backend.balancingMode is RATE. In the future, this incompatible combination will be rejected.
  final String balancingMode;

  /// A multiplier applied to the backend's target capacity of its balancing mode. The default value is 1, which means the group serves up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. The valid ranges are 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service. Not available with backends that don't support using a balancingMode. This includes backends such as global internet NEGs, regional serverless NEGs, and PSC NEGs.
  final double capacityScaler;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  final bool failover;

  /// The fully-qualified URL of an instance group or network endpoint group (NEG) resource. To determine what types of backends a load balancer supports, see the [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service#backends). You must use the *fully-qualified* URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  final String group;

  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final int maxConnections;

  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final int maxConnectionsPerEndpoint;

  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final int maxConnectionsPerInstance;

  /// Defines a maximum number of HTTP requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final int maxRate;

  /// Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final double maxRatePerEndpoint;

  /// Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final double maxRatePerInstance;

  /// Optional parameter to define a target capacity for the UTILIZATION balancing mode. The valid range is [0.0, 1.0]. For usage guidelines, see Utilization balancing mode.
  final double maxUtilization;

  /// This field indicates whether this backend should be fully utilized before sending traffic to backends with default preference. The possible values are: - PREFERRED: Backends with this preference level will be filled up to their capacity limits first, based on RTT. - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and traffic would be assigned based on the load balancing algorithm you use. This is the default
  final String preference;

  /// Creates a new [BackendResponseComputeBeta].
  /// [balancingMode] Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see Connection balancing mode. Backends must use compatible balancing modes. For more information, see Supported balancing modes and target capacity settings and Restrictions and guidance for instance groups. Note: Currently, if you use the API to configure incompatible balancing modes, the configuration might be accepted even though it has no impact and is ignored. Specifically, Backend.maxUtilization is ignored when Backend.balancingMode is RATE. In the future, this incompatible combination will be rejected.
  /// [capacityScaler] A multiplier applied to the backend's target capacity of its balancing mode. The default value is 1, which means the group serves up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. The valid ranges are 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service. Not available with backends that don't support using a balancingMode. This includes backends such as global internet NEGs, regional serverless NEGs, and PSC NEGs.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [failover] This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  /// [group] The fully-qualified URL of an instance group or network endpoint group (NEG) resource. To determine what types of backends a load balancer supports, see the [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service#backends). You must use the *fully-qualified* URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  /// [maxConnections] Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  /// [maxConnectionsPerEndpoint] Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  /// [maxConnectionsPerInstance] Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  /// [maxRate] Defines a maximum number of HTTP requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  /// [maxRatePerEndpoint] Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  /// [maxRatePerInstance] Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  /// [maxUtilization] Optional parameter to define a target capacity for the UTILIZATION balancing mode. The valid range is [0.0, 1.0]. For usage guidelines, see Utilization balancing mode.
  /// [preference] This field indicates whether this backend should be fully utilized before sending traffic to backends with default preference. The possible values are: - PREFERRED: Backends with this preference level will be filled up to their capacity limits first, based on RTT. - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and traffic would be assigned based on the load balancing algorithm you use. This is the default
  BackendResponseComputeBeta({
    required this.balancingMode,
    required this.capacityScaler,
    required this.description,
    required this.failover,
    required this.group,
    required this.maxConnections,
    required this.maxConnectionsPerEndpoint,
    required this.maxConnectionsPerInstance,
    required this.maxRate,
    required this.maxRatePerEndpoint,
    required this.maxRatePerInstance,
    required this.maxUtilization,
    required this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balancingMode': balancingMode,
      'capacityScaler': capacityScaler,
      'description': description,
      'failover': failover,
      'group': group,
      'maxConnections': maxConnections,
      'maxConnectionsPerEndpoint': maxConnectionsPerEndpoint,
      'maxConnectionsPerInstance': maxConnectionsPerInstance,
      'maxRate': maxRate,
      'maxRatePerEndpoint': maxRatePerEndpoint,
      'maxRatePerInstance': maxRatePerInstance,
      'maxUtilization': maxUtilization,
      'preference': preference,
    };
  }

  factory BackendResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendResponseComputeBeta(
      balancingMode: map['balancingMode'] as String,
      capacityScaler: map['capacityScaler'] as double,
      description: map['description'] as String,
      failover: map['failover'] as bool,
      group: map['group'] as String,
      maxConnections: map['maxConnections'] as int,
      maxConnectionsPerEndpoint: map['maxConnectionsPerEndpoint'] as int,
      maxConnectionsPerInstance: map['maxConnectionsPerInstance'] as int,
      maxRate: map['maxRate'] as int,
      maxRatePerEndpoint: map['maxRatePerEndpoint'] as double,
      maxRatePerInstance: map['maxRatePerInstance'] as double,
      maxUtilization: map['maxUtilization'] as double,
      preference: map['preference'] as String,
    );
  }
}
