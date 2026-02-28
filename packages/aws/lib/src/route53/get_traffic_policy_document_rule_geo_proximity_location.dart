// ignore_for_file: unused_element, unnecessary_cast


class GetTrafficPolicyDocumentRuleGeoProximityLocation {
  /// Specify a value for `bias` if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values).
  final String? bias;
  /// References to an endpoint.
  final String? endpointReference;
  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final bool? evaluateTargetHealth;
  /// If you want to associate a health check with the endpoint or rule.
  final String? healthCheck;
  /// Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees.
  final String? latitude;
  /// Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees.
  final String? longitude;
  /// If your endpoint is an AWS resource, specify the AWS Region that you created the resource in.
  final String? region;
  /// References to a rule.
  final String? ruleReference;

  /// Creates a new [GetTrafficPolicyDocumentRuleGeoProximityLocation].
  /// [bias] Specify a value for `bias` if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values).
  /// [endpointReference] References to an endpoint.
  /// [evaluateTargetHealth] Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  /// [healthCheck] If you want to associate a health check with the endpoint or rule.
  /// [latitude] Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees.
  /// [longitude] Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees.
  /// [region] If your endpoint is an AWS resource, specify the AWS Region that you created the resource in.
  /// [ruleReference] References to a rule.
  GetTrafficPolicyDocumentRuleGeoProximityLocation({
    this.bias,
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.latitude,
    this.longitude,
    this.region,
    this.ruleReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bias': ?bias,
      'endpointReference': ?endpointReference,
      'evaluateTargetHealth': ?evaluateTargetHealth,
      'healthCheck': ?healthCheck,
      'latitude': ?latitude,
      'longitude': ?longitude,
      'region': ?region,
      'ruleReference': ?ruleReference,
    };
  }

  factory GetTrafficPolicyDocumentRuleGeoProximityLocation.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleGeoProximityLocation(
      bias: map['bias'] == null ? null : map['bias'] as String,
      endpointReference: map['endpointReference'] == null ? null : map['endpointReference'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] == null ? null : map['evaluateTargetHealth'] as bool,
      healthCheck: map['healthCheck'] == null ? null : map['healthCheck'] as String,
      latitude: map['latitude'] == null ? null : map['latitude'] as String,
      longitude: map['longitude'] == null ? null : map['longitude'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      ruleReference: map['ruleReference'] == null ? null : map['ruleReference'] as String,
    );
  }
}

