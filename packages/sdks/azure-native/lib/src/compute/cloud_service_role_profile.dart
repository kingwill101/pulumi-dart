// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_role_profile_properties.dart';

/// Describes the role profile for the cloud service.
class CloudServiceRoleProfile {
  /// List of roles for the cloud service.
  final pulumi.Input<List<CloudServiceRoleProfileProperties>>? roles;

  /// Creates a new [CloudServiceRoleProfile].
  /// [roles] List of roles for the cloud service.
  const CloudServiceRoleProfile({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?pulumi.Input.mapOptionalInputValue<List<CloudServiceRoleProfileProperties>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<CloudServiceRoleProfileProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudServiceRoleProfile.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleProfile(
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudServiceRoleProfileProperties>(guardedValue, (value) => CloudServiceRoleProfileProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

