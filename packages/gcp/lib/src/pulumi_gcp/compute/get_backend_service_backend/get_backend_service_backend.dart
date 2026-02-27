// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_backend_custom_metric/get_backend_service_backend_custom_metric.dart';

class GetBackendServiceBackend {
  /// Specifies the balancing mode for this backend.
  ///
  /// For global HTTP(S) or TCP/SSL load balancing, the default is
  /// UTILIZATION. Valid values are UTILIZATION, RATE (for HTTP(S)),
  /// CUSTOM_METRICS (for HTTP(s)) and CONNECTION (for TCP/SSL).
  ///
  /// See the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
  /// for an explanation of load balancing modes. Default value: "UTILIZATION" Possible values: ["UTILIZATION", "RATE", "CONNECTION", "CUSTOM_METRICS", "IN_FLIGHT"]
  final String balancingMode;

  /// A multiplier applied to the group's maximum servicing capacity
  /// (based on UTILIZATION, RATE or CONNECTION).
  ///
  /// Default value is 1, which means the group will serve up to 100%
  /// of its configured capacity (depending on balancingMode). A
  /// setting of 0 means the group is completely drained, offering
  /// 0% of its available Capacity. Valid range is [0.0,1.0].
  final double capacityScaler;

  /// The set of custom metrics that are used for <code>CUSTOM_METRICS</code> BalancingMode.
  final List<GetBackendServiceBackendCustomMetric> customMetrics;

  /// Textual description for the Backend Service.
  final String description;

  /// The fully-qualified URL of an Instance Group or Network Endpoint
  /// Group resource. In case of instance group this defines the list
  /// of instances that serve traffic. Member virtual machine
  /// instances from each instance group must live in the same zone as
  /// the instance group itself. No two backends in a backend service
  /// are allowed to use same Instance Group resource.
  ///
  /// For Network Endpoint Groups this defines list of endpoints. All
  /// endpoints of Network Endpoint Group must be hosted on instances
  /// located in the same zone as the Network Endpoint Group.
  ///
  /// Backend services cannot mix Instance Group and
  /// Network Endpoint Group backends.
  ///
  /// Note that you must specify an Instance Group or Network Endpoint
  /// Group resource using the fully-qualified URL, rather than a
  /// partial URL.
  final String group;

  /// The max number of simultaneous connections for the group. Can
  /// be used with either CONNECTION or UTILIZATION balancing modes.
  ///
  /// For CONNECTION mode, either maxConnections or one
  /// of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
  /// as appropriate for group type, must be set.
  final int maxConnections;

  /// The max number of simultaneous connections that a single backend
  /// network endpoint can handle. This is used to calculate the
  /// capacity of the group. Can be used in either CONNECTION or
  /// UTILIZATION balancing modes.
  ///
  /// For CONNECTION mode, either
  /// maxConnections or maxConnectionsPerEndpoint must be set.
  final int maxConnectionsPerEndpoint;

  /// The max number of simultaneous connections that a single
  /// backend instance can handle. This is used to calculate the
  /// capacity of the group. Can be used in either CONNECTION or
  /// UTILIZATION balancing modes.
  ///
  /// For CONNECTION mode, either maxConnections or
  /// maxConnectionsPerInstance must be set.
  final int maxConnectionsPerInstance;

  /// Defines a maximum number of in-flight requests for the whole NEG
  /// or instance group. Not available if backend's balancingMode is RATE
  /// or CONNECTION.
  final int maxInFlightRequests;

  /// Defines a maximum number of in-flight requests for a single endpoint.
  /// Not available if backend's balancingMode is RATE or CONNECTION.
  final int maxInFlightRequestsPerEndpoint;

  /// Defines a maximum number of in-flight requests for a single VM.
  /// Not available if backend's balancingMode is RATE or CONNECTION.
  final int maxInFlightRequestsPerInstance;

  /// The max requests per second (RPS) of the group.
  ///
  /// Can be used with either RATE or UTILIZATION balancing modes,
  /// but required if RATE mode. For RATE mode, either maxRate or one
  /// of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
  /// group type, must be set.
  final int maxRate;

  /// The max requests per second (RPS) that a single backend network
  /// endpoint can handle. This is used to calculate the capacity of
  /// the group. Can be used in either balancing mode. For RATE mode,
  /// either maxRate or maxRatePerEndpoint must be set.
  final double maxRatePerEndpoint;

  /// The max requests per second (RPS) that a single backend
  /// instance can handle. This is used to calculate the capacity of
  /// the group. Can be used in either balancing mode. For RATE mode,
  /// either maxRate or maxRatePerInstance must be set.
  final double maxRatePerInstance;

  /// Used when balancingMode is UTILIZATION. This ratio defines the
  /// CPU utilization target for the group. Valid range is [0.0, 1.0].
  final double maxUtilization;

  /// This field indicates whether this backend should be fully utilized before sending traffic to backends
  /// with default preference. This field cannot be set when loadBalancingScheme is set to 'EXTERNAL'. The possible values are:
  /// - PREFERRED: Backends with this preference level will be filled up to their capacity limits first,
  /// based on RTT.
  /// - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and
  /// traffic would be assigned based on the load balancing algorithm you use. This is the default Possible values: ["PREFERRED", "DEFAULT"]
  final String preference;

  /// This field specifies how long a connection should be kept alive for:
  /// - LONG: Most of the requests are expected to take more than multiple
  /// seconds to finish.
  /// - SHORT: Most requests are expected to finish with a sub-second latency. Possible values: ["LONG", "SHORT"]
  final String trafficDuration;

  GetBackendServiceBackend({
    required this.balancingMode,
    required this.capacityScaler,
    required this.customMetrics,
    required this.description,
    required this.group,
    required this.maxConnections,
    required this.maxConnectionsPerEndpoint,
    required this.maxConnectionsPerInstance,
    required this.maxInFlightRequests,
    required this.maxInFlightRequestsPerEndpoint,
    required this.maxInFlightRequestsPerInstance,
    required this.maxRate,
    required this.maxRatePerEndpoint,
    required this.maxRatePerInstance,
    required this.maxUtilization,
    required this.preference,
    required this.trafficDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['balancingMode'] = balancingMode;
    map['capacityScaler'] = capacityScaler;
    map['customMetrics'] = pulumi.Input.encodeList<
        GetBackendServiceBackendCustomMetric,
        Map<String, dynamic>>(customMetrics, (value) => value.toMap());
    map['description'] = description;
    map['group'] = group;
    map['maxConnections'] = maxConnections;
    map['maxConnectionsPerEndpoint'] = maxConnectionsPerEndpoint;
    map['maxConnectionsPerInstance'] = maxConnectionsPerInstance;
    map['maxInFlightRequests'] = maxInFlightRequests;
    map['maxInFlightRequestsPerEndpoint'] = maxInFlightRequestsPerEndpoint;
    map['maxInFlightRequestsPerInstance'] = maxInFlightRequestsPerInstance;
    map['maxRate'] = maxRate;
    map['maxRatePerEndpoint'] = maxRatePerEndpoint;
    map['maxRatePerInstance'] = maxRatePerInstance;
    map['maxUtilization'] = maxUtilization;
    map['preference'] = preference;
    map['trafficDuration'] = trafficDuration;
    return map;
  }

  factory GetBackendServiceBackend.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceBackend(
      balancingMode: map['balancingMode'] as String,
      capacityScaler: map['capacityScaler'] as double,
      customMetrics:
          pulumi.Input.decodeList<GetBackendServiceBackendCustomMetric>(
              map['customMetrics'],
              (value) => GetBackendServiceBackendCustomMetric.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      group: map['group'] as String,
      maxConnections: map['maxConnections'] as int,
      maxConnectionsPerEndpoint: map['maxConnectionsPerEndpoint'] as int,
      maxConnectionsPerInstance: map['maxConnectionsPerInstance'] as int,
      maxInFlightRequests: map['maxInFlightRequests'] as int,
      maxInFlightRequestsPerEndpoint:
          map['maxInFlightRequestsPerEndpoint'] as int,
      maxInFlightRequestsPerInstance:
          map['maxInFlightRequestsPerInstance'] as int,
      maxRate: map['maxRate'] as int,
      maxRatePerEndpoint: map['maxRatePerEndpoint'] as double,
      maxRatePerInstance: map['maxRatePerInstance'] as double,
      maxUtilization: map['maxUtilization'] as double,
      preference: map['preference'] as String,
      trafficDuration: map['trafficDuration'] as String,
    );
  }
}
