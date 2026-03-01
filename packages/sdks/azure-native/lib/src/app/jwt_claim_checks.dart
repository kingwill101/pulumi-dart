// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the checks that should be made while validating the JWT Claims.
class JwtClaimChecks {
  /// The list of the allowed client applications.
  final List<String>? allowedClientApplications;
  /// The list of the allowed groups.
  final List<String>? allowedGroups;

  /// Creates a new [JwtClaimChecks].
  /// [allowedClientApplications] The list of the allowed client applications.
  /// [allowedGroups] The list of the allowed groups.
  JwtClaimChecks({
    this.allowedClientApplications,
    this.allowedGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClientApplications': ?allowedClientApplications,
      'allowedGroups': ?allowedGroups,
    };
  }

  factory JwtClaimChecks.fromMap(Map<String, dynamic> map) {
    return JwtClaimChecks(
      allowedClientApplications: map['allowedClientApplications'] == null ? null : (map['allowedClientApplications'] as List).cast<String>(),
      allowedGroups: map['allowedGroups'] == null ? null : (map['allowedGroups'] as List).cast<String>(),
    );
  }
}

