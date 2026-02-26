// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentRuleGeoProximityLocation {
  /// Specify a value for <span pulumi-lang-nodejs="`bias`" pulumi-lang-dotnet="`Bias`" pulumi-lang-go="`bias`" pulumi-lang-python="`bias`" pulumi-lang-yaml="`bias`" pulumi-lang-java="`bias`">`bias`</span> if you want to route more traffic to an endpoint from nearby endpoints (positive values) or route less traffic to an endpoint (negative values).
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
    final map = <String, dynamic>{};
    final biasValue = bias;
    if (biasValue != null) {
      map['bias'] = biasValue;
    }
    final endpointReferenceValue = endpointReference;
    if (endpointReferenceValue != null) {
      map['endpointReference'] = endpointReferenceValue;
    }
    final evaluateTargetHealthValue = evaluateTargetHealth;
    if (evaluateTargetHealthValue != null) {
      map['evaluateTargetHealth'] = evaluateTargetHealthValue;
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue;
    }
    final latitudeValue = latitude;
    if (latitudeValue != null) {
      map['latitude'] = latitudeValue;
    }
    final longitudeValue = longitude;
    if (longitudeValue != null) {
      map['longitude'] = longitudeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final ruleReferenceValue = ruleReference;
    if (ruleReferenceValue != null) {
      map['ruleReference'] = ruleReferenceValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentRuleGeoProximityLocation.fromMap(
      Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleGeoProximityLocation(
      bias: map['bias'] == null ? null : map['bias'] as String,
      endpointReference: map['endpointReference'] == null
          ? null
          : map['endpointReference'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] == null
          ? null
          : map['evaluateTargetHealth'] as bool,
      healthCheck:
          map['healthCheck'] == null ? null : map['healthCheck'] as String,
      latitude: map['latitude'] == null ? null : map['latitude'] as String,
      longitude: map['longitude'] == null ? null : map['longitude'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      ruleReference:
          map['ruleReference'] == null ? null : map['ruleReference'] as String,
    );
  }
}
