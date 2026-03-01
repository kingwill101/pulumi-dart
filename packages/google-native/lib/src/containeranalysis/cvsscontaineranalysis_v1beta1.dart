// ignore_for_file: unused_element, unnecessary_cast

import 'cvssattack_complexity_containeranalysis_v1beta1.dart';
import 'cvssattack_vector_containeranalysis_v1beta1.dart';
import 'cvssauthentication_containeranalysis_v1beta1.dart';
import 'cvssavailability_impact_containeranalysis_v1beta1.dart';
import 'cvssconfidentiality_impact_containeranalysis_v1beta1.dart';
import 'cvssintegrity_impact_containeranalysis_v1beta1.dart';
import 'cvssprivileges_required_containeranalysis_v1beta1.dart';
import 'cvssscope_containeranalysis_v1beta1.dart';
import 'cvssuser_interaction_containeranalysis_v1beta1.dart';

/// Common Vulnerability Scoring System. This message is compatible with CVSS v2 and v3. For CVSS v2 details, see https://www.first.org/cvss/v2/guide CVSS v2 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details, see https://www.first.org/cvss/specification-document CVSS v3 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
class CVSSContaineranalysisV1beta1 {
  /// Defined in CVSS v3, CVSS v2
  final CVSSAttackComplexityContaineranalysisV1beta1? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  final CVSSAttackVectorContaineranalysisV1beta1? attackVector;

  /// Defined in CVSS v2
  final CVSSAuthenticationContaineranalysisV1beta1? authentication;

  /// Defined in CVSS v3, CVSS v2
  final CVSSAvailabilityImpactContaineranalysisV1beta1? availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double? baseScore;

  /// Defined in CVSS v3, CVSS v2
  final CVSSConfidentialityImpactContaineranalysisV1beta1?
  confidentialityImpact;
  final double? exploitabilityScore;
  final double? impactScore;

  /// Defined in CVSS v3, CVSS v2
  final CVSSIntegrityImpactContaineranalysisV1beta1? integrityImpact;

  /// Defined in CVSS v3
  final CVSSPrivilegesRequiredContaineranalysisV1beta1? privilegesRequired;

  /// Defined in CVSS v3
  final CVSSScopeContaineranalysisV1beta1? scope;

  /// Defined in CVSS v3
  final CVSSUserInteractionContaineranalysisV1beta1? userInteraction;

  /// Creates a new [CVSSContaineranalysisV1beta1].
  /// [attackComplexity] Defined in CVSS v3, CVSS v2
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  /// [authentication] Defined in CVSS v2
  /// [availabilityImpact] Defined in CVSS v3, CVSS v2
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Defined in CVSS v3, CVSS v2
  /// [exploitabilityScore] Optional.
  /// [impactScore] Optional.
  /// [integrityImpact] Defined in CVSS v3, CVSS v2
  /// [privilegesRequired] Defined in CVSS v3
  /// [scope] Defined in CVSS v3
  /// [userInteraction] Defined in CVSS v3
  CVSSContaineranalysisV1beta1({
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
    return <String, dynamic>{
      'attackComplexity': ?attackComplexity == null
          ? null
          : attackComplexity!.value,
      'attackVector': ?attackVector == null ? null : attackVector!.value,
      'authentication': ?authentication == null ? null : authentication!.value,
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

  factory CVSSContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return CVSSContaineranalysisV1beta1(
      attackComplexity: map['attackComplexity'] == null
          ? null
          : CVSSAttackComplexityContaineranalysisV1beta1.fromValue(
              map['attackComplexity'] as String,
            ),
      attackVector: map['attackVector'] == null
          ? null
          : CVSSAttackVectorContaineranalysisV1beta1.fromValue(
              map['attackVector'] as String,
            ),
      authentication: map['authentication'] == null
          ? null
          : CVSSAuthenticationContaineranalysisV1beta1.fromValue(
              map['authentication'] as String,
            ),
      availabilityImpact: map['availabilityImpact'] == null
          ? null
          : CVSSAvailabilityImpactContaineranalysisV1beta1.fromValue(
              map['availabilityImpact'] as String,
            ),
      baseScore: map['baseScore'] == null ? null : map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] == null
          ? null
          : CVSSConfidentialityImpactContaineranalysisV1beta1.fromValue(
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
          : CVSSIntegrityImpactContaineranalysisV1beta1.fromValue(
              map['integrityImpact'] as String,
            ),
      privilegesRequired: map['privilegesRequired'] == null
          ? null
          : CVSSPrivilegesRequiredContaineranalysisV1beta1.fromValue(
              map['privilegesRequired'] as String,
            ),
      scope: map['scope'] == null
          ? null
          : CVSSScopeContaineranalysisV1beta1.fromValue(map['scope'] as String),
      userInteraction: map['userInteraction'] == null
          ? null
          : CVSSUserInteractionContaineranalysisV1beta1.fromValue(
              map['userInteraction'] as String,
            ),
    );
  }
}
