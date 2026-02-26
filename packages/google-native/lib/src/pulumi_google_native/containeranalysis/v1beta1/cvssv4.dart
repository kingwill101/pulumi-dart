// ignore_for_file: unused_element, unnecessary_cast

import 'cvssv3_attack_complexity2.dart';
import 'cvssv3_attack_vector2.dart';
import 'cvssv3_availability_impact2.dart';
import 'cvssv3_confidentiality_impact2.dart';
import 'cvssv3_integrity_impact2.dart';
import 'cvssv3_privileges_required2.dart';
import 'cvssv3_scope2.dart';
import 'cvssv3_user_interaction2.dart';

/// Deprecated. Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv4 {
  final CVSSv3AttackComplexity2? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final CVSSv3AttackVector2? attackVector;
  final CVSSv3AvailabilityImpact2? availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double? baseScore;
  final CVSSv3ConfidentialityImpact2? confidentialityImpact;
  final double? exploitabilityScore;
  final double? impactScore;
  final CVSSv3IntegrityImpact2? integrityImpact;
  final CVSSv3PrivilegesRequired2? privilegesRequired;
  final CVSSv3Scope2? scope;
  final CVSSv3UserInteraction2? userInteraction;

  CVSSv4({
    this.attackComplexity,
    this.attackVector,
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

  factory CVSSv4.fromMap(Map<String, dynamic> map) {
    return CVSSv4(
      attackComplexity: map['attackComplexity'] == null
          ? null
          : CVSSv3AttackComplexity2.fromValue(
              map['attackComplexity'] as String),
      attackVector: map['attackVector'] == null
          ? null
          : CVSSv3AttackVector2.fromValue(map['attackVector'] as String),
      availabilityImpact: map['availabilityImpact'] == null
          ? null
          : CVSSv3AvailabilityImpact2.fromValue(
              map['availabilityImpact'] as String),
      baseScore: map['baseScore'] == null ? null : map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] == null
          ? null
          : CVSSv3ConfidentialityImpact2.fromValue(
              map['confidentialityImpact'] as String),
      exploitabilityScore: map['exploitabilityScore'] == null
          ? null
          : map['exploitabilityScore'] as double,
      impactScore:
          map['impactScore'] == null ? null : map['impactScore'] as double,
      integrityImpact: map['integrityImpact'] == null
          ? null
          : CVSSv3IntegrityImpact2.fromValue(map['integrityImpact'] as String),
      privilegesRequired: map['privilegesRequired'] == null
          ? null
          : CVSSv3PrivilegesRequired2.fromValue(
              map['privilegesRequired'] as String),
      scope: map['scope'] == null
          ? null
          : CVSSv3Scope2.fromValue(map['scope'] as String),
      userInteraction: map['userInteraction'] == null
          ? null
          : CVSSv3UserInteraction2.fromValue(map['userInteraction'] as String),
    );
  }
}
