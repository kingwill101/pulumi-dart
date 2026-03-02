// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficPolicyDocumentRuleGeoProximityLocation {
  /// Specify a value for `bias` if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values).
  final pulumi.Input<String>? bias;
  /// References to an endpoint.
  final pulumi.Input<String>? endpointReference;
  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final pulumi.Input<bool>? evaluateTargetHealth;
  /// If you want to associate a health check with the endpoint or rule.
  final pulumi.Input<String>? healthCheck;
  /// Represents the location south (negative) or north (positive) of the equator. Valid values are -90 degrees to 90 degrees.
  final pulumi.Input<String>? latitude;
  /// Represents the location west (negative) or east (positive) of the prime meridian. Valid values are -180 degrees to 180 degrees.
  final pulumi.Input<String>? longitude;
  /// If your endpoint is an AWS resource, specify the AWS Region that you created the resource in.
  final pulumi.Input<String>? region;
  /// References to a rule.
  final pulumi.Input<String>? ruleReference;

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
      bias: map['bias'] == null ? null : (map['bias'] as String).input(),
      endpointReference: map['endpointReference'] == null ? null : (map['endpointReference'] as String).input(),
      evaluateTargetHealth: map['evaluateTargetHealth'] == null ? null : (map['evaluateTargetHealth'] as bool).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      latitude: map['latitude'] == null ? null : (map['latitude'] as String).input(),
      longitude: map['longitude'] == null ? null : (map['longitude'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      ruleReference: map['ruleReference'] == null ? null : (map['ruleReference'] as String).input(),
    );
  }
}

