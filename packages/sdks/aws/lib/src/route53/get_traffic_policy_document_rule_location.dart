// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficPolicyDocumentRuleLocation {
  /// Value of a continent.
  final pulumi.Input<String>? continent;
  /// Value of a country.
  final pulumi.Input<String>? country;
  /// References to an endpoint.
  final pulumi.Input<String>? endpointReference;
  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final pulumi.Input<bool>? evaluateTargetHealth;
  /// If you want to associate a health check with the endpoint or rule.
  final pulumi.Input<String>? healthCheck;
  /// Indicates whether this set of values represents the default location.
  final pulumi.Input<bool>? isDefault;
  /// References to a rule.
  final pulumi.Input<String>? ruleReference;
  /// Value of a subdivision.
  final pulumi.Input<String>? subdivision;

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
    return <String, dynamic>{
      'continent': ?continent,
      'country': ?country,
      'endpointReference': ?endpointReference,
      'evaluateTargetHealth': ?evaluateTargetHealth,
      'healthCheck': ?healthCheck,
      'isDefault': ?isDefault,
      'ruleReference': ?ruleReference,
      'subdivision': ?subdivision,
    };
  }

  factory GetTrafficPolicyDocumentRuleLocation.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleLocation(
      continent: map['continent'] == null ? null : (map['continent'] as String).input(),
      country: map['country'] == null ? null : (map['country'] as String).input(),
      endpointReference: map['endpointReference'] == null ? null : (map['endpointReference'] as String).input(),
      evaluateTargetHealth: map['evaluateTargetHealth'] == null ? null : (map['evaluateTargetHealth'] as bool).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      ruleReference: map['ruleReference'] == null ? null : (map['ruleReference'] as String).input(),
      subdivision: map['subdivision'] == null ? null : (map['subdivision'] as String).input(),
    );
  }
}

