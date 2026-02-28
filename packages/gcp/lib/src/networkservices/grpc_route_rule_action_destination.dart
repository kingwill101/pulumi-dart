// ignore_for_file: unused_element, unnecessary_cast

class GrpcRouteRuleActionDestination {
  /// The URL of a BackendService to route traffic to.
  final String? serviceName;

  /// Specifies the proportion of requests forwarded to the backend referenced by the serviceName field.
  final int? weight;

  /// Creates a new [GrpcRouteRuleActionDestination].
  /// [serviceName] The URL of a BackendService to route traffic to.
  /// [weight] Specifies the proportion of requests forwarded to the backend referenced by the serviceName field.
  GrpcRouteRuleActionDestination({
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

  factory GrpcRouteRuleActionDestination.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleActionDestination(
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
