// ignore_for_file: unused_element, unnecessary_cast

import 'cvssv3_attack_complexity.dart';
import 'cvssv3_attack_vector.dart';
import 'cvssv3_availability_impact.dart';
import 'cvssv3_confidentiality_impact.dart';
import 'cvssv3_integrity_impact.dart';
import 'cvssv3_privileges_required.dart';
import 'cvssv3_scope.dart';
import 'cvssv3_user_interaction.dart';

/// Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv3 {
  final CVSSv3AttackComplexity? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final CVSSv3AttackVector? attackVector;
  final CVSSv3AvailabilityImpact? availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double? baseScore;
  final CVSSv3ConfidentialityImpact? confidentialityImpact;
  final double? exploitabilityScore;
  final double? impactScore;
  final CVSSv3IntegrityImpact? integrityImpact;
  final CVSSv3PrivilegesRequired? privilegesRequired;
  final CVSSv3Scope? scope;
  final CVSSv3UserInteraction? userInteraction;

  CVSSv3({
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

  factory CVSSv3.fromMap(Map<String, dynamic> map) {
    return CVSSv3(
      attackComplexity: map['attackComplexity'] == null
          ? null
          : CVSSv3AttackComplexity.fromValue(map['attackComplexity'] as String),
      attackVector: map['attackVector'] == null
          ? null
          : CVSSv3AttackVector.fromValue(map['attackVector'] as String),
      availabilityImpact: map['availabilityImpact'] == null
          ? null
          : CVSSv3AvailabilityImpact.fromValue(
              map['availabilityImpact'] as String),
      baseScore: map['baseScore'] == null ? null : map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] == null
          ? null
          : CVSSv3ConfidentialityImpact.fromValue(
              map['confidentialityImpact'] as String),
      exploitabilityScore: map['exploitabilityScore'] == null
          ? null
          : map['exploitabilityScore'] as double,
      impactScore:
          map['impactScore'] == null ? null : map['impactScore'] as double,
      integrityImpact: map['integrityImpact'] == null
          ? null
          : CVSSv3IntegrityImpact.fromValue(map['integrityImpact'] as String),
      privilegesRequired: map['privilegesRequired'] == null
          ? null
          : CVSSv3PrivilegesRequired.fromValue(
              map['privilegesRequired'] as String),
      scope: map['scope'] == null
          ? null
          : CVSSv3Scope.fromValue(map['scope'] as String),
      userInteraction: map['userInteraction'] == null
          ? null
          : CVSSv3UserInteraction.fromValue(map['userInteraction'] as String),
    );
  }
}
