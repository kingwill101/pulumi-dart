// ignore_for_file: unused_element, unnecessary_cast

import 'cvssv3_attack_complexity_containeranalysis_v1beta1.dart';
import 'cvssv3_attack_vector_containeranalysis_v1beta1.dart';
import 'cvssv3_availability_impact_containeranalysis_v1beta1.dart';
import 'cvssv3_confidentiality_impact_containeranalysis_v1beta1.dart';
import 'cvssv3_integrity_impact_containeranalysis_v1beta1.dart';
import 'cvssv3_privileges_required_containeranalysis_v1beta1.dart';
import 'cvssv3_scope_containeranalysis_v1beta1.dart';
import 'cvssv3_user_interaction_containeranalysis_v1beta1.dart';

/// Deprecated. Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv3ContaineranalysisV1beta1 {
  final CVSSv3AttackComplexityContaineranalysisV1beta1? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final CVSSv3AttackVectorContaineranalysisV1beta1? attackVector;
  final CVSSv3AvailabilityImpactContaineranalysisV1beta1? availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double? baseScore;
  final CVSSv3ConfidentialityImpactContaineranalysisV1beta1?
  confidentialityImpact;
  final double? exploitabilityScore;
  final double? impactScore;
  final CVSSv3IntegrityImpactContaineranalysisV1beta1? integrityImpact;
  final CVSSv3PrivilegesRequiredContaineranalysisV1beta1? privilegesRequired;
  final CVSSv3ScopeContaineranalysisV1beta1? scope;
  final CVSSv3UserInteractionContaineranalysisV1beta1? userInteraction;

  /// Creates a new [CVSSv3ContaineranalysisV1beta1].
  /// [attackComplexity] Optional.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [availabilityImpact] Optional.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Optional.
  /// [exploitabilityScore] Optional.
  /// [impactScore] Optional.
  /// [integrityImpact] Optional.
  /// [privilegesRequired] Optional.
  /// [scope] Optional.
  /// [userInteraction] Optional.
  CVSSv3ContaineranalysisV1beta1({
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
    return <String, dynamic>{
      'attackComplexity': ?attackComplexity == null
          ? null
          : attackComplexity!.value,
      'attackVector': ?attackVector == null ? null : attackVector!.value,
      'availabilityImpact': ?availabilityImpact == null
          ? null
          : availabilityImpact!.value,
      'baseScore': ?baseScore,
      'confidentialityImpact': ?confidentialityImpact == null
          ? null
          : confidentialityImpact!.value,
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?integrityImpact == null
          ? null
          : integrityImpact!.value,
      'privilegesRequired': ?privilegesRequired == null
          ? null
          : privilegesRequired!.value,
      'scope': ?scope == null ? null : scope!.value,
      'userInteraction': ?userInteraction == null
          ? null
          : userInteraction!.value,
    };
  }

  factory CVSSv3ContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return CVSSv3ContaineranalysisV1beta1(
      attackComplexity: map['attackComplexity'] == null
          ? null
          : CVSSv3AttackComplexityContaineranalysisV1beta1.fromValue(
              map['attackComplexity'] as String,
            ),
      attackVector: map['attackVector'] == null
          ? null
          : CVSSv3AttackVectorContaineranalysisV1beta1.fromValue(
              map['attackVector'] as String,
            ),
      availabilityImpact: map['availabilityImpact'] == null
          ? null
          : CVSSv3AvailabilityImpactContaineranalysisV1beta1.fromValue(
              map['availabilityImpact'] as String,
            ),
      baseScore: map['baseScore'] == null ? null : map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] == null
          ? null
          : CVSSv3ConfidentialityImpactContaineranalysisV1beta1.fromValue(
              map['confidentialityImpact'] as String,
            ),
      exploitabilityScore: map['exploitabilityScore'] == null
          ? null
          : map['exploitabilityScore'] as double,
      impactScore: map['impactScore'] == null
          ? null
          : map['impactScore'] as double,
      integrityImpact: map['integrityImpact'] == null
          ? null
          : CVSSv3IntegrityImpactContaineranalysisV1beta1.fromValue(
              map['integrityImpact'] as String,
            ),
      privilegesRequired: map['privilegesRequired'] == null
          ? null
          : CVSSv3PrivilegesRequiredContaineranalysisV1beta1.fromValue(
              map['privilegesRequired'] as String,
            ),
      scope: map['scope'] == null
          ? null
          : CVSSv3ScopeContaineranalysisV1beta1.fromValue(
              map['scope'] as String,
            ),
      userInteraction: map['userInteraction'] == null
          ? null
          : CVSSv3UserInteractionContaineranalysisV1beta1.fromValue(
              map['userInteraction'] as String,
            ),
    );
  }
}
