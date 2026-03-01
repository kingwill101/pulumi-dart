// ignore_for_file: unused_element, unnecessary_cast

/// Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.
class CVSSResponse {
  final String attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  final String attackVector;
  final String authentication;
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

  /// Creates a new [CVSSResponse].
  /// [attackComplexity] Required.
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  /// [authentication] Required.
  /// [availabilityImpact] Required.
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Required.
  /// [exploitabilityScore] Required.
  /// [impactScore] Required.
  /// [integrityImpact] Required.
  /// [privilegesRequired] Required.
  /// [scope] Required.
  /// [userInteraction] Required.
  CVSSResponse({
    required this.attackComplexity,
    required this.attackVector,
    required this.authentication,
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
    return <String, dynamic>{
      'attackComplexity': attackComplexity,
      'attackVector': attackVector,
      'authentication': authentication,
      'availabilityImpact': availabilityImpact,
      'baseScore': baseScore,
      'confidentialityImpact': confidentialityImpact,
      'exploitabilityScore': exploitabilityScore,
      'impactScore': impactScore,
      'integrityImpact': integrityImpact,
      'privilegesRequired': privilegesRequired,
      'scope': scope,
      'userInteraction': userInteraction,
    };
  }

  factory CVSSResponse.fromMap(Map<String, dynamic> map) {
    return CVSSResponse(
      attackComplexity: map['attackComplexity'] as String,
      attackVector: map['attackVector'] as String,
      authentication: map['authentication'] as String,
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
