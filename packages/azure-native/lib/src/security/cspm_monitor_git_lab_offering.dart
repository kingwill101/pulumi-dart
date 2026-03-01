// ignore_for_file: unused_element, unnecessary_cast


/// The CSPM (Cloud security posture management) monitoring for gitlab offering
class CspmMonitorGitLabOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorGitLab'.
  final String offeringType;

  /// Creates a new [CspmMonitorGitLabOffering].
  /// [offeringType] The type of the security offering.
  CspmMonitorGitLabOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorGitLabOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorGitLabOffering(
      offeringType: map['offeringType'] as String,
    );
  }
}

