// ignore_for_file: unused_element, unnecessary_cast

/// The destination to which traffic will be routed.
class GrpcRouteDestination {
  /// The URL of a destination service to which to route traffic. Must refer to either a BackendService or ServiceDirectoryService.
  final String serviceName;

  /// Optional. Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: - weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.
  final int? weight;

  /// Creates a new [GrpcRouteDestination].
  /// [serviceName] The URL of a destination service to which to route traffic. Must refer to either a BackendService or ServiceDirectoryService.
  /// [weight] Optional. Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: - weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.
  GrpcRouteDestination({
    required this.serviceName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory GrpcRouteDestination.fromMap(Map<String, dynamic> map) {
    return GrpcRouteDestination(
      serviceName: map['serviceName'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
