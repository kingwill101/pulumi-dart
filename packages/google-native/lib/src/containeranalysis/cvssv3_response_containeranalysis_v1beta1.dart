// ignore_for_file: unused_element, unnecessary_cast

/// Deprecated. Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document
class CVSSv3ResponseContaineranalysisV1beta1 {
  final String attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final String attackVector;
  final String availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double baseScore;
  final String confidentialityImpact;
  final double exploitabilityScore;
  final double impactScore;
  final String integrityImpact;
  final String privilegesRequired;
  final String scope;
  final String userInteraction;

  /// Creates a new [CVSSv3ResponseContaineranalysisV1beta1].
  /// [attackComplexity] Required.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [availabilityImpact] Required.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Required.
  /// [exploitabilityScore] Required.
  /// [impactScore] Required.
  /// [integrityImpact] Required.
  /// [privilegesRequired] Required.
  /// [scope] Required.
  /// [userInteraction] Required.
  CVSSv3ResponseContaineranalysisV1beta1({
    required this.attackComplexity,
    required this.attackVector,
    required this.availabilityImpact,
    required this.baseScore,
    required this.confidentialityImpact,
    required this.exploitabilityScore,
    required this.impactScore,
    required this.integrityImpact,
    required this.privilegesRequired,
    required this.scope,
    required this.userInteraction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attackComplexity'] = attackComplexity;
    map['attackVector'] = attackVector;
    map['availabilityImpact'] = availabilityImpact;
    map['baseScore'] = baseScore;
    map['confidentialityImpact'] = confidentialityImpact;
    map['exploitabilityScore'] = exploitabilityScore;
    map['impactScore'] = impactScore;
    map['integrityImpact'] = integrityImpact;
    map['privilegesRequired'] = privilegesRequired;
    map['scope'] = scope;
    map['userInteraction'] = userInteraction;
    return map;
  }

  factory CVSSv3ResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CVSSv3ResponseContaineranalysisV1beta1(
      attackComplexity: map['attackComplexity'] as String,
      attackVector: map['attackVector'] as String,
      availabilityImpact: map['availabilityImpact'] as String,
      baseScore: map['baseScore'] as double,
      confidentialityImpact: map['confidentialityImpact'] as String,
      exploitabilityScore: map['exploitabilityScore'] as double,
      impactScore: map['impactScore'] as double,
      integrityImpact: map['integrityImpact'] as String,
      privilegesRequired: map['privilegesRequired'] as String,
      scope: map['scope'] as String,
      userInteraction: map['userInteraction'] as String,
    );
  }
}
