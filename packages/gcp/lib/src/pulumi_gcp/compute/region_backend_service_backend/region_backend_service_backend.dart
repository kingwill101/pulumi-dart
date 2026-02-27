// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_backend_service_backend_custom_metric/region_backend_service_backend_custom_metric.dart';

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
    final map = <String, dynamic>{};
    final balancingModeValue = balancingMode;
    if (balancingModeValue != null) {
      map['balancingMode'] = balancingModeValue;
    }
    final capacityScalerValue = capacityScaler;
    if (capacityScalerValue != null) {
      map['capacityScaler'] = capacityScalerValue;
    }
    final customMetricsValue = customMetrics;
    if (customMetricsValue != null) {
      map['customMetrics'] = Input.encodeList<
          RegionBackendServiceBackendCustomMetric,
          Map<String, dynamic>>(customMetricsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverValue = failover;
    if (failoverValue != null) {
      map['failover'] = failoverValue;
    }
    map['group'] = group;
    final maxConnectionsValue = maxConnections;
    if (maxConnectionsValue != null) {
      map['maxConnections'] = maxConnectionsValue;
    }
    final maxConnectionsPerEndpointValue = maxConnectionsPerEndpoint;
    if (maxConnectionsPerEndpointValue != null) {
      map['maxConnectionsPerEndpoint'] = maxConnectionsPerEndpointValue;
    }
    final maxConnectionsPerInstanceValue = maxConnectionsPerInstance;
    if (maxConnectionsPerInstanceValue != null) {
      map['maxConnectionsPerInstance'] = maxConnectionsPerInstanceValue;
    }
    final maxInFlightRequestsValue = maxInFlightRequests;
    if (maxInFlightRequestsValue != null) {
      map['maxInFlightRequests'] = maxInFlightRequestsValue;
    }
    final maxInFlightRequestsPerEndpointValue = maxInFlightRequestsPerEndpoint;
    if (maxInFlightRequestsPerEndpointValue != null) {
      map['maxInFlightRequestsPerEndpoint'] =
          maxInFlightRequestsPerEndpointValue;
    }
    final maxInFlightRequestsPerInstanceValue = maxInFlightRequestsPerInstance;
    if (maxInFlightRequestsPerInstanceValue != null) {
      map['maxInFlightRequestsPerInstance'] =
          maxInFlightRequestsPerInstanceValue;
    }
    final maxRateValue = maxRate;
    if (maxRateValue != null) {
      map['maxRate'] = maxRateValue;
    }
    final maxRatePerEndpointValue = maxRatePerEndpoint;
    if (maxRatePerEndpointValue != null) {
      map['maxRatePerEndpoint'] = maxRatePerEndpointValue;
    }
    final maxRatePerInstanceValue = maxRatePerInstance;
    if (maxRatePerInstanceValue != null) {
      map['maxRatePerInstance'] = maxRatePerInstanceValue;
    }
    final maxUtilizationValue = maxUtilization;
    if (maxUtilizationValue != null) {
      map['maxUtilization'] = maxUtilizationValue;
    }
    final trafficDurationValue = trafficDuration;
    if (trafficDurationValue != null) {
      map['trafficDuration'] = trafficDurationValue;
    }
    return map;
  }

  factory RegionBackendServiceBackend.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceBackend(
      balancingMode:
          map['balancingMode'] == null ? null : map['balancingMode'] as String,
      capacityScaler: map['capacityScaler'] == null
          ? null
          : map['capacityScaler'] as double,
      customMetrics: map['customMetrics'] == null
          ? null
          : Input.decodeList<RegionBackendServiceBackendCustomMetric>(
              map['customMetrics'],
              (value) => RegionBackendServiceBackendCustomMetric.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      failover: map['failover'] == null ? null : map['failover'] as bool,
      group: map['group'] as String,
      maxConnections:
          map['maxConnections'] == null ? null : map['maxConnections'] as int,
      maxConnectionsPerEndpoint: map['maxConnectionsPerEndpoint'] == null
          ? null
          : map['maxConnectionsPerEndpoint'] as int,
      maxConnectionsPerInstance: map['maxConnectionsPerInstance'] == null
          ? null
          : map['maxConnectionsPerInstance'] as int,
      maxInFlightRequests: map['maxInFlightRequests'] == null
          ? null
          : map['maxInFlightRequests'] as int,
      maxInFlightRequestsPerEndpoint:
          map['maxInFlightRequestsPerEndpoint'] == null
              ? null
              : map['maxInFlightRequestsPerEndpoint'] as int,
      maxInFlightRequestsPerInstance:
          map['maxInFlightRequestsPerInstance'] == null
              ? null
              : map['maxInFlightRequestsPerInstance'] as int,
      maxRate: map['maxRate'] == null ? null : map['maxRate'] as int,
      maxRatePerEndpoint: map['maxRatePerEndpoint'] == null
          ? null
          : map['maxRatePerEndpoint'] as double,
      maxRatePerInstance: map['maxRatePerInstance'] == null
          ? null
          : map['maxRatePerInstance'] as double,
      maxUtilization: map['maxUtilization'] == null
          ? null
          : map['maxUtilization'] as double,
      trafficDuration: map['trafficDuration'] == null
          ? null
          : map['trafficDuration'] as String,
    );
  }
}
