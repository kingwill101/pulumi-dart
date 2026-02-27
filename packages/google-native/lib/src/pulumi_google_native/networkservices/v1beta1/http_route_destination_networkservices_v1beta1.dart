// ignore_for_file: unused_element, unnecessary_cast

/// Specifications of a destination to which the request should be routed to.
class HttpRouteDestinationNetworkservicesV1beta1 {
  /// The URL of a BackendService to route traffic to.
  final String? serviceName;

  /// Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: - weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.
  final int? weight;

  HttpRouteDestinationNetworkservicesV1beta1({
    this.serviceName,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory HttpRouteDestinationNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteDestinationNetworkservicesV1beta1(
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
