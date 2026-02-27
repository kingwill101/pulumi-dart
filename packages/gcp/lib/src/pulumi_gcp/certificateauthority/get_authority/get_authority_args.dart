// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthority.
class GetAuthorityArgs {
  /// ID of the certificate authority.
  ///
  /// - - -
  final pulumi.Input<String>? certificateAuthorityId;

  /// The location the certificate authority exists in.
  final pulumi.Input<String>? location;

  /// The name of the pool the certificate authority belongs to.
  final pulumi.Input<String>? pool;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetAuthorityArgs({
    this.certificateAuthorityId,
    this.location,
    this.pool,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityIdValue = certificateAuthorityId;
    if (certificateAuthorityIdValue != null) {
      map['certificateAuthorityId'] = certificateAuthorityIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final poolValue = pool;
    if (poolValue != null) {
      map['pool'] = poolValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorityArgs(
      certificateAuthorityId:
          pulumi.Input.asOptionalInput<String>(map['certificateAuthorityId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      pool: pulumi.Input.asOptionalInput<String>(map['pool']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
