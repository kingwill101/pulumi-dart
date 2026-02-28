// ignore_for_file: unused_element, unnecessary_cast

import 'cvssattack_complexity.dart';
import 'cvssattack_vector.dart';
import 'cvssauthentication.dart';
import 'cvssavailability_impact.dart';
import 'cvssconfidentiality_impact.dart';
import 'cvssintegrity_impact.dart';
import 'cvssprivileges_required.dart';
import 'cvssscope.dart';
import 'cvssuser_interaction.dart';

/// Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.
class CVSS {
  final CVSSAttackComplexity? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final CVSSAttackVector? attackVector;
  final CVSSAuthentication? authentication;
  final CVSSAvailabilityImpact? availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double? baseScore;
  final CVSSConfidentialityImpact? confidentialityImpact;
  final double? exploitabilityScore;
  final double? impactScore;
  final CVSSIntegrityImpact? integrityImpact;
  final CVSSPrivilegesRequired? privilegesRequired;
  final CVSSScope? scope;
  final CVSSUserInteraction? userInteraction;

  /// Creates a new [CVSS].
  /// [attackComplexity] Optional.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [authentication] Optional.
  /// [availabilityImpact] Optional.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Optional.
  /// [exploitabilityScore] Optional.
  /// [impactScore] Optional.
  /// [integrityImpact] Optional.
  /// [privilegesRequired] Optional.
  /// [scope] Optional.
  /// [userInteraction] Optional.
  CVSS({
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

  factory CVSS.fromMap(Map<String, dynamic> map) {
    return CVSS(
      attackComplexity: map['attackComplexity'] == null
          ? null
          : CVSSAttackComplexity.fromValue(map['attackComplexity'] as String),
      attackVector: map['attackVector'] == null
          ? null
          : CVSSAttackVector.fromValue(map['attackVector'] as String),
      authentication: map['authentication'] == null
          ? null
          : CVSSAuthentication.fromValue(map['authentication'] as String),
      availabilityImpact: map['availabilityImpact'] == null
          ? null
          : CVSSAvailabilityImpact.fromValue(
              map['availabilityImpact'] as String),
      baseScore: map['baseScore'] == null ? null : map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] == null
          ? null
          : CVSSConfidentialityImpact.fromValue(
              map['confidentialityImpact'] as String),
      exploitabilityScore: map['exploitabilityScore'] == null
          ? null
          : map['exploitabilityScore'] as double,
      impactScore:
          map['impactScore'] == null ? null : map['impactScore'] as double,
      integrityImpact: map['integrityImpact'] == null
          ? null
          : CVSSIntegrityImpact.fromValue(map['integrityImpact'] as String),
      privilegesRequired: map['privilegesRequired'] == null
          ? null
          : CVSSPrivilegesRequired.fromValue(
              map['privilegesRequired'] as String),
      scope: map['scope'] == null
          ? null
          : CVSSScope.fromValue(map['scope'] as String),
      userInteraction: map['userInteraction'] == null
          ? null
          : CVSSUserInteraction.fromValue(map['userInteraction'] as String),
    );
  }
}
