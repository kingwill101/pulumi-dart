// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the checks that should be made while validating the JWT Claims.
class JwtClaimChecksResponse {
  /// The list of the allowed client applications.
  final pulumi.Input<List<String>>? allowedClientApplications;
  /// The list of the allowed groups.
  final pulumi.Input<List<String>>? allowedGroups;

  /// Creates a new [JwtClaimChecksResponse].
  /// [allowedClientApplications] The list of the allowed client applications.
  /// [allowedGroups] The list of the allowed groups.
  JwtClaimChecksResponse({
    this.allowedClientApplications,
    this.allowedGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClientApplications': ?allowedClientApplications,
      'allowedGroups': ?allowedGroups,
    };
  }

  factory JwtClaimChecksResponse.fromMap(Map<String, dynamic> map) {
    return JwtClaimChecksResponse(
      allowedClientApplications: map['allowedClientApplications'] == null ? null : ((map['allowedClientApplications']! as List).cast<String>()).input(),
      allowedGroups: map['allowedGroups'] == null ? null : ((map['allowedGroups']! as List).cast<String>()).input(),
    );
  }
}

