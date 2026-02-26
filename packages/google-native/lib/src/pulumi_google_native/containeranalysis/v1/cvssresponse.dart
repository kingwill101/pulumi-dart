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
    final map = <String, dynamic>{};
    map['attackComplexity'] = attackComplexity;
    map['attackVector'] = attackVector;
    map['authentication'] = authentication;
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
