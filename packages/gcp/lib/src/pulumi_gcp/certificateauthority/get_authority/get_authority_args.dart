// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAuthority.
class GetAuthorityArgs {
  /// ID of the certificate authority.
  ///
  /// - - -
  final Input<String>? certificateAuthorityId;

  /// The location the certificate authority exists in.
  final Input<String>? location;

  /// The name of the pool the certificate authority belongs to.
  final Input<String>? pool;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

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
          Input.asOptionalInput<String>(map['certificateAuthorityId']),
      location: Input.asOptionalInput<String>(map['location']),
      pool: Input.asOptionalInput<String>(map['pool']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
