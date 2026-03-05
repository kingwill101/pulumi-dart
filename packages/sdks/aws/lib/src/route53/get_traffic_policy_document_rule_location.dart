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
      continent: (() { final guardedValue = map['continent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointReference: (() { final guardedValue = map['endpointReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluateTargetHealth: (() { final guardedValue = map['evaluateTargetHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleReference: (() { final guardedValue = map['ruleReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdivision: (() { final guardedValue = map['subdivision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

