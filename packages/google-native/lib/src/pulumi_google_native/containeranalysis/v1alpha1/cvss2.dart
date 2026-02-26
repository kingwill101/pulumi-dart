// ignore_for_file: unused_element, unnecessary_cast

import 'cvssattack_complexity2.dart';
import 'cvssattack_vector2.dart';
import 'cvssauthentication2.dart';
import 'cvssavailability_impact2.dart';
import 'cvssconfidentiality_impact2.dart';
import 'cvssintegrity_impact2.dart';
import 'cvssprivileges_required2.dart';
import 'cvssscope2.dart';
import 'cvssuser_interaction2.dart';

/// Common Vulnerability Scoring System. This message is compatible with CVSS v2 and v3. For CVSS v2 details, see https://www.first.org/cvss/v2/guide CVSS v2 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details, see https://www.first.org/cvss/specification-document CVSS v3 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
class CVSS2 {
  /// Defined in CVSS v3, CVSS v2
  final CVSSAttackComplexity2? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  final CVSSAttackVector2? attackVector;

  /// Defined in CVSS v2
  final CVSSAuthentication2? authentication;

  /// Defined in CVSS v3, CVSS v2
  final CVSSAvailabilityImpact2? availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double? baseScore;

  /// Defined in CVSS v3, CVSS v2
  final CVSSConfidentialityImpact2? confidentialityImpact;
  final double? exploitabilityScore;
  final double? impactScore;

  /// Defined in CVSS v3, CVSS v2
  final CVSSIntegrityImpact2? integrityImpact;

  /// Defined in CVSS v3
  final CVSSPrivilegesRequired2? privilegesRequired;

  /// Defined in CVSS v3
  final CVSSScope2? scope;

  /// Defined in CVSS v3
  final CVSSUserInteraction2? userInteraction;

  CVSS2({
    this.attackComplexity,
    this.attackVector,
    this.authentication,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.exploitabilityScore,
    this.impactScore,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.userInteraction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attackComplexityValue = attackComplexity;
    if (attackComplexityValue != null) {
      map['attackComplexity'] = attackComplexityValue.value;
    }
    final attackVectorValue = attackVector;
    if (attackVectorValue != null) {
      map['attackVector'] = attackVectorValue.value;
    }
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = authenticationValue.value;
    }
    final availabilityImpactValue = availabilityImpact;
    if (availabilityImpactValue != null) {
      map['availabilityImpact'] = availabilityImpactValue.value;
    }
    final baseScoreValue = baseScore;
    if (baseScoreValue != null) {
      map['baseScore'] = baseScoreValue;
    }
    final confidentialityImpactValue = confidentialityImpact;
    if (confidentialityImpactValue != null) {
      map['confidentialityImpact'] = confidentialityImpactValue.value;
    }
    final exploitabilityScoreValue = exploitabilityScore;
    if (exploitabilityScoreValue != null) {
      map['exploitabilityScore'] = exploitabilityScoreValue;
    }
    final impactScoreValue = impactScore;
    if (impactScoreValue != null) {
      map['impactScore'] = impactScoreValue;
    }
    final integrityImpactValue = integrityImpact;
    if (integrityImpactValue != null) {
      map['integrityImpact'] = integrityImpactValue.value;
    }
    final privilegesRequiredValue = privilegesRequired;
    if (privilegesRequiredValue != null) {
      map['privilegesRequired'] = privilegesRequiredValue.value;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue.value;
    }
    final userInteractionValue = userInteraction;
    if (userInteractionValue != null) {
      map['userInteraction'] = userInteractionValue.value;
    }
    return map;
  }

  factory CVSS2.fromMap(Map<String, dynamic> map) {
    return CVSS2(
      attackComplexity: map['attackComplexity'] == null
          ? null
          : CVSSAttackComplexity2.fromValue(map['attackComplexity'] as String),
      attackVector: map['attackVector'] == null
          ? null
          : CVSSAttackVector2.fromValue(map['attackVector'] as String),
      authentication: map['authentication'] == null
          ? null
          : CVSSAuthentication2.fromValue(map['authentication'] as String),
      availabilityImpact: map['availabilityImpact'] == null
          ? null
          : CVSSAvailabilityImpact2.fromValue(
              map['availabilityImpact'] as String),
      baseScore: map['baseScore'] == null ? null : map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] == null
          ? null
          : CVSSConfidentialityImpact2.fromValue(
              map['confidentialityImpact'] as String),
      exploitabilityScore: map['exploitabilityScore'] == null
          ? null
          : map['exploitabilityScore'] as double,
      impactScore:
          map['impactScore'] == null ? null : map['impactScore'] as double,
      integrityImpact: map['integrityImpact'] == null
          ? null
          : CVSSIntegrityImpact2.fromValue(map['integrityImpact'] as String),
      privilegesRequired: map['privilegesRequired'] == null
          ? null
          : CVSSPrivilegesRequired2.fromValue(
              map['privilegesRequired'] as String),
      scope: map['scope'] == null
          ? null
          : CVSSScope2.fromValue(map['scope'] as String),
      userInteraction: map['userInteraction'] == null
          ? null
          : CVSSUserInteraction2.fromValue(map['userInteraction'] as String),
    );
  }
}
