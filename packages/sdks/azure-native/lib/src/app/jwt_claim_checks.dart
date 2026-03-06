// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the checks that should be made while validating the JWT Claims.
class JwtClaimChecks {
  /// The list of the allowed client applications.
  final pulumi.Input<List<String>>? allowedClientApplications;
  /// The list of the allowed groups.
  final pulumi.Input<List<String>>? allowedGroups;

  /// Creates a new [JwtClaimChecks].
  /// [allowedClientApplications] The list of the allowed client applications.
  /// [allowedGroups] The list of the allowed groups.
  const JwtClaimChecks({
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
      allowedClientApplications: (() { final guardedValue = map['allowedClientApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedGroups: (() { final guardedValue = map['allowedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

