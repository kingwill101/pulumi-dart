// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_response.dart';
import 'principal_response.dart';

class RbacPolicyResponse {
  /// Name of the RbacPolicy.
  final String name;

  /// The list of permissions.
  final List<PermissionResponse> permissions;

  /// The list of principals.
  final List<PrincipalResponse> principals;

  /// Creates a new [RbacPolicyResponse].
  /// [name] Name of the RbacPolicy.
  /// [permissions] The list of permissions.
  /// [principals] The list of principals.
  RbacPolicyResponse({
    required this.name,
    required this.permissions,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'permissions':
          pulumi.Input.encodeList<PermissionResponse, Map<String, dynamic>>(
            permissions,
            (value) => value.toMap(),
          ),
      'principals':
          pulumi.Input.encodeList<PrincipalResponse, Map<String, dynamic>>(
            principals,
            (value) => value.toMap(),
          ),
    };
  }

  factory RbacPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RbacPolicyResponse(
      name: map['name'] as String,
      permissions: pulumi.Input.decodeList<PermissionResponse>(
        map['permissions'],
        (value) =>
            PermissionResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      principals: pulumi.Input.decodeList<PrincipalResponse>(
        map['principals'],
        (value) =>
            PrincipalResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
