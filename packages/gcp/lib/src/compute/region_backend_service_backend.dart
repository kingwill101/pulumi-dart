// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_backend_custom_metric.dart';

class RegionBackendServiceBackend {
  /// Specifies the balancing mode for this backend.
  /// See the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
  /// for an explanation of load balancing modes.
  /// Default value is `UTILIZATION`.
  /// Possible values are: `UTILIZATION`, `RATE`, `CONNECTION`, `CUSTOM_METRICS`.
  final String? balancingMode;
  /// A multiplier applied to the group's maximum servicing capacity
  /// (based on UTILIZATION, RATE or CONNECTION).
  /// ~>**NOTE**: This field cannot be set for
  /// INTERNAL region backend services (default loadBalancingScheme),
  /// but is required for non-INTERNAL backend service. The total
  /// capacity_scaler for all backends must be non-zero.
  /// A setting of 0 means the group is completely drained, offering
  /// 0% of its available Capacity. Valid range is [0.0,1.0].
  final double? capacityScaler;
  /// The set of custom metrics that are used for <code>CUSTOM_METRICS</code> BalancingMode.
  /// Structure is documented below.
  final List<RegionBackendServiceBackendCustomMetric>? customMetrics;
  /// An optional description of this resource.
  /// Provide this property when you create the resource.
  final String? description;
  /// This field designates whether this is a failover backend. More
  /// than one failover backend can be configured for a given RegionBackendService.
  final bool? failover;
  /// The fully-qualified URL of an Instance Group or Network Endpoint
  /// Group resource. In case of instance group this defines the list
  /// of instances that serve traffic. Member virtual machine
  /// instances from each instance group must live in the same zone as
  /// the instance group itself. No two backends in a backend service
  /// are allowed to use same Instance Group resource.
  /// For Network Endpoint Groups this defines list of endpoints. All
  /// endpoints of Network Endpoint Group must be hosted on instances
  /// located in the same zone as the Network Endpoint Group.
  /// Backend services cannot mix Instance Group and
  /// Network Endpoint Group backends.
  /// When the `load_balancing_scheme` is INTERNAL, only instance groups
  /// are supported.
  /// Note that you must specify an Instance Group or Network Endpoint
  /// Group resource using the fully-qualified URL, rather than a
  /// partial URL.
  final String group;
  /// The max number of simultaneous connections for the group. Can
  /// be used with either CONNECTION or UTILIZATION balancing modes.
  /// Cannot be set for INTERNAL backend services.
  /// For CONNECTION mode, either maxConnections or one
  /// of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
  /// as appropriate for group type, must be set.
  final int? maxConnections;
  /// The max number of simultaneous connections that a single backend
  /// network endpoint can handle. Cannot be set
  /// for INTERNAL backend services.
  /// This is used to calculate the capacity of the group. Can be
  /// used in either CONNECTION or UTILIZATION balancing modes. For
  /// CONNECTION mode, either maxConnections or
  /// maxConnectionsPerEndpoint must be set.
  final int? maxConnectionsPerEndpoint;
  /// The max number of simultaneous connections that a single
  /// backend instance can handle. Cannot be set for INTERNAL backend
  /// services.
  /// This is used to calculate the capacity of the group.
  /// Can be used in either CONNECTION or UTILIZATION balancing modes.
  /// For CONNECTION mode, either maxConnections or
  /// maxConnectionsPerInstance must be set.
  final int? maxConnectionsPerInstance;
  /// Defines a maximum number of in-flight requests for the whole NEG
  /// or instance group. Not available if backend's balancingMode is RATE
  /// or CONNECTION.
  final int? maxInFlightRequests;
  /// Defines a maximum number of in-flight requests for a single endpoint.
  /// Not available if backend's balancingMode is RATE or CONNECTION.
  final int? maxInFlightRequestsPerEndpoint;
  /// Defines a maximum number of in-flight requests for a single VM.
  /// Not available if backend's balancingMode is RATE or CONNECTION.
  final int? maxInFlightRequestsPerInstance;
  /// The max requests per second (RPS) of the group. Cannot be set
  /// for INTERNAL backend services.
  /// Can be used with either RATE or UTILIZATION balancing modes,
  /// but required if RATE mode. Either maxRate or one
  /// of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
  /// group type, must be set.
  final int? maxRate;
  /// The max requests per second (RPS) that a single backend network
  /// endpoint can handle. This is used to calculate the capacity of
  /// the group. Can be used in either balancing mode. For RATE mode,
  /// either maxRate or maxRatePerEndpoint must be set. Cannot be set
  /// for INTERNAL backend services.
  final double? maxRatePerEndpoint;
  /// The max requests per second (RPS) that a single backend
  /// instance can handle. This is used to calculate the capacity of
  /// the group. Can be used in either balancing mode. For RATE mode,
  /// either maxRate or maxRatePerInstance must be set. Cannot be set
  /// for INTERNAL backend services.
  final double? maxRatePerInstance;
  /// Used when balancingMode is UTILIZATION. This ratio defines the
  /// CPU utilization target for the group. Valid range is [0.0, 1.0].
  /// Cannot be set for INTERNAL backend services.
  final double? maxUtilization;
  /// This field specifies how long a connection should be kept alive for:
  /// - LONG: Most of the requests are expected to take more than multiple
  /// seconds to finish.
  /// - SHORT: Most requests are expected to finish with a sub-second latency.
  /// Possible values are: `LONG`, `SHORT`.
  final String? trafficDuration;

  /// Creates a new [RegionBackendServiceBackend].
  /// [balancingMode] Specifies the balancing mode for this backend.
  /// [capacityScaler] A multiplier applied to the group's maximum servicing capacity
  /// [customMetrics] The set of custom metrics that are used for <code>CUSTOM_METRICS</code> BalancingMode.
  /// [description] An optional description of this resource.
  /// [failover] This field designates whether this is a failover backend. More
  /// [group] The fully-qualified URL of an Instance Group or Network Endpoint
  /// [maxConnections] The max number of simultaneous connections for the group. Can
  /// [maxConnectionsPerEndpoint] The max number of simultaneous connections that a single backend
  /// [maxConnectionsPerInstance] The max number of simultaneous connections that a single
  /// [maxInFlightRequests] Defines a maximum number of in-flight requests for the whole NEG
  /// [maxInFlightRequestsPerEndpoint] Defines a maximum number of in-flight requests for a single endpoint.
  /// [maxInFlightRequestsPerInstance] Defines a maximum number of in-flight requests for a single VM.
  /// [maxRate] The max requests per second (RPS) of the group. Cannot be set
  /// [maxRatePerEndpoint] The max requests per second (RPS) that a single backend network
  /// [maxRatePerInstance] The max requests per second (RPS) that a single backend
  /// [maxUtilization] Used when balancingMode is UTILIZATION. This ratio defines the
  /// [trafficDuration] This field specifies how long a connection should be kept alive for:
  RegionBackendServiceBackend({
    this.balancingMode,
    this.capacityScaler,
    this.customMetrics,
    this.description,
    this.failover,
    required this.group,
    this.maxConnections,
    this.maxConnectionsPerEndpoint,
    this.maxConnectionsPerInstance,
    this.maxInFlightRequests,
    this.maxInFlightRequestsPerEndpoint,
    this.maxInFlightRequestsPerInstance,
    this.maxRate,
    this.maxRatePerEndpoint,
    this.maxRatePerInstance,
    this.maxUtilization,
    this.trafficDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balancingMode': ?balancingMode,
      'capacityScaler': ?capacityScaler,
      'customMetrics': ?customMetrics == null ? null : pulumi.Input.encodeList<RegionBackendServiceBackendCustomMetric, Map<String, dynamic>>(customMetrics!, (value) => value.toMap()),
      'description': ?description,
      'failover': ?failover,
      'group': group,
      'maxConnections': ?maxConnections,
      'maxConnectionsPerEndpoint': ?maxConnectionsPerEndpoint,
      'maxConnectionsPerInstance': ?maxConnectionsPerInstance,
      'maxInFlightRequests': ?maxInFlightRequests,
      'maxInFlightRequestsPerEndpoint': ?maxInFlightRequestsPerEndpoint,
      'maxInFlightRequestsPerInstance': ?maxInFlightRequestsPerInstance,
      'maxRate': ?maxRate,
      'maxRatePerEndpoint': ?maxRatePerEndpoint,
      'maxRatePerInstance': ?maxRatePerInstance,
      'maxUtilization': ?maxUtilization,
      'trafficDuration': ?trafficDuration,
    };
  }

  factory RegionBackendServiceBackend.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceBackend(
      balancingMode: map['balancingMode'] == null ? null : map['balancingMode'] as String,
      capacityScaler: map['capacityScaler'] == null ? null : map['capacityScaler'] as double,
      customMetrics: map['customMetrics'] == null ? null : pulumi.Input.decodeList<RegionBackendServiceBackendCustomMetric>(map['customMetrics'], (value) => RegionBackendServiceBackendCustomMetric.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      failover: map['failover'] == null ? null : map['failover'] as bool,
      group: map['group'] as String,
      maxConnections: map['maxConnections'] == null ? null : map['maxConnections'] as int,
      maxConnectionsPerEndpoint: map['maxConnectionsPerEndpoint'] == null ? null : map['maxConnectionsPerEndpoint'] as int,
      maxConnectionsPerInstance: map['maxConnectionsPerInstance'] == null ? null : map['maxConnectionsPerInstance'] as int,
      maxInFlightRequests: map['maxInFlightRequests'] == null ? null : map['maxInFlightRequests'] as int,
      maxInFlightRequestsPerEndpoint: map['maxInFlightRequestsPerEndpoint'] == null ? null : map['maxInFlightRequestsPerEndpoint'] as int,
      maxInFlightRequestsPerInstance: map['maxInFlightRequestsPerInstance'] == null ? null : map['maxInFlightRequestsPerInstance'] as int,
      maxRate: map['maxRate'] == null ? null : map['maxRate'] as int,
      maxRatePerEndpoint: map['maxRatePerEndpoint'] == null ? null : map['maxRatePerEndpoint'] as double,
      maxRatePerInstance: map['maxRatePerInstance'] == null ? null : map['maxRatePerInstance'] as double,
      maxUtilization: map['maxUtilization'] == null ? null : map['maxUtilization'] as double,
      trafficDuration: map['trafficDuration'] == null ? null : map['trafficDuration'] as String,
    );
  }
}

