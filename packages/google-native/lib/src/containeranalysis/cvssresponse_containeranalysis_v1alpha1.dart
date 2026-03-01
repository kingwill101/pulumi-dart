// ignore_for_file: unused_element, unnecessary_cast

/// Common Vulnerability Scoring System. This message is compatible with CVSS v2 and v3. For CVSS v2 details, see https://www.first.org/cvss/v2/guide CVSS v2 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details, see https://www.first.org/cvss/specification-document CVSS v3 calculator: https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
class CVSSResponseContaineranalysisV1alpha1 {
  /// Defined in CVSS v3, CVSS v2
  final String attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  final String attackVector;

  /// Defined in CVSS v2
  final String authentication;

  /// Defined in CVSS v3, CVSS v2
  final String availabilityImpact;

  /// The base score is a function of the base metric scores.
  final double baseScore;

  /// Defined in CVSS v3, CVSS v2
  final String confidentialityImpact;
  final double exploitabilityScore;
  final double impactScore;

  /// Defined in CVSS v3, CVSS v2
  final String integrityImpact;

  /// Defined in CVSS v3
  final String privilegesRequired;

  /// Defined in CVSS v3
  final String scope;

  /// Defined in CVSS v3
  final String userInteraction;

  /// Creates a new [CVSSResponseContaineranalysisV1alpha1].
  /// [attackComplexity] Defined in CVSS v3, CVSS v2
  /// [attackVector] Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. Defined in CVSS v3, CVSS v2
  /// [authentication] Defined in CVSS v2
  /// [availabilityImpact] Defined in CVSS v3, CVSS v2
  /// [baseScore] The base score is a function of the base metric scores.
  /// [confidentialityImpact] Defined in CVSS v3, CVSS v2
  /// [exploitabilityScore] Required.
  /// [impactScore] Required.
  /// [integrityImpact] Defined in CVSS v3, CVSS v2
  /// [privilegesRequired] Defined in CVSS v3
  /// [scope] Defined in CVSS v3
  /// [userInteraction] Defined in CVSS v3
  CVSSResponseContaineranalysisV1alpha1({
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

  factory CVSSResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CVSSResponseContaineranalysisV1alpha1(
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
