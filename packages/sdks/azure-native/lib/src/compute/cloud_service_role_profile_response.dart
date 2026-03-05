// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_role_profile_properties_response.dart';

/// Describes the role profile for the cloud service.
class CloudServiceRoleProfileResponse {
  /// List of roles for the cloud service.
  final pulumi.Input<List<CloudServiceRoleProfilePropertiesResponse>>? roles;

  /// Creates a new [CloudServiceRoleProfileResponse].
  /// [roles] List of roles for the cloud service.
  CloudServiceRoleProfileResponse({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?pulumi.Input.mapOptionalInputValue<List<CloudServiceRoleProfilePropertiesResponse>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<CloudServiceRoleProfilePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudServiceRoleProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleProfileResponse(
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudServiceRoleProfilePropertiesResponse>(guardedValue, (value) => CloudServiceRoleProfilePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

