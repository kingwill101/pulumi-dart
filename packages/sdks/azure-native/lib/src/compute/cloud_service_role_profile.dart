// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_role_profile_properties.dart';

/// Describes the role profile for the cloud service.
class CloudServiceRoleProfile {
  /// List of roles for the cloud service.
  final List<CloudServiceRoleProfileProperties>? roles;

  /// Creates a new [CloudServiceRoleProfile].
  /// [roles] List of roles for the cloud service.
  CloudServiceRoleProfile({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles == null ? null : pulumi.Input.encodeList<CloudServiceRoleProfileProperties, Map<String, dynamic>>(roles!, (value) => value.toMap()),
    };
  }

  factory CloudServiceRoleProfile.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleProfile(
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<CloudServiceRoleProfileProperties>(map['roles'], (value) => CloudServiceRoleProfileProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

