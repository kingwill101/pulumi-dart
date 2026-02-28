// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentRuleLocation {
  /// Value of a continent.
  final String? continent;

  /// Value of a country.
  final String? country;

  /// References to an endpoint.
  final String? endpointReference;

  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final bool? evaluateTargetHealth;

  /// If you want to associate a health check with the endpoint or rule.
  final String? healthCheck;

  /// Indicates whether this set of values represents the default location.
  final bool? isDefault;

  /// References to a rule.
  final String? ruleReference;

  /// Value of a subdivision.
  final String? subdivision;

  /// Creates a new [GetTrafficPolicyDocumentRuleLocation].
  /// [continent] Value of a continent.
  /// [country] Value of a country.
  /// [endpointReference] References to an endpoint.
  /// [evaluateTargetHealth] Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  /// [healthCheck] If you want to associate a health check with the endpoint or rule.
  /// [isDefault] Indicates whether this set of values represents the default location.
  /// [ruleReference] References to a rule.
  /// [subdivision] Value of a subdivision.
  GetTrafficPolicyDocumentRuleLocation({
    this.continent,
    this.country,
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.isDefault,
    this.ruleReference,
    this.subdivision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final continentValue = continent;
    if (continentValue != null) {
      map['continent'] = continentValue;
    }
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
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
    final isDefaultValue = isDefault;
    if (isDefaultValue != null) {
      map['isDefault'] = isDefaultValue;
    }
    final ruleReferenceValue = ruleReference;
    if (ruleReferenceValue != null) {
      map['ruleReference'] = ruleReferenceValue;
    }
    final subdivisionValue = subdivision;
    if (subdivisionValue != null) {
      map['subdivision'] = subdivisionValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentRuleLocation.fromMap(
      Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleLocation(
      continent: map['continent'] == null ? null : map['continent'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      endpointReference: map['endpointReference'] == null
          ? null
          : map['endpointReference'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] == null
          ? null
          : map['evaluateTargetHealth'] as bool,
      healthCheck:
          map['healthCheck'] == null ? null : map['healthCheck'] as String,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      ruleReference:
          map['ruleReference'] == null ? null : map['ruleReference'] as String,
      subdivision:
          map['subdivision'] == null ? null : map['subdivision'] as String,
    );
  }
}
