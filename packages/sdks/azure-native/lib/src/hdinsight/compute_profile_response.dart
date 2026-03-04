// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_response.dart';

/// Describes the compute profile.
class ComputeProfileResponse {
  /// The list of roles in the cluster.
  final pulumi.Input<List<RoleResponse>>? roles;

  /// Creates a new [ComputeProfileResponse].
  /// [roles] The list of roles in the cluster.
  ComputeProfileResponse({this.roles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles':
          ?pulumi.Input.mapOptionalInputValue<
            List<RoleResponse>,
            List<Map<String, dynamic>>
          >(
            roles,
            (value) =>
                pulumi.Input.encodeList<RoleResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ComputeProfileResponse.fromMap(Map<String, dynamic> map) {
    return ComputeProfileResponse(
      roles: (() {
        final guardedValue = map['roles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RoleResponse>(
            guardedValue,
            (value) =>
                RoleResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
