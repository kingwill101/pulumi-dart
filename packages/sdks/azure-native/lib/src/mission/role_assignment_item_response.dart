// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_response.dart';

/// Role assignment item that indicates which principals should be assigned this role definition
class RoleAssignmentItemResponse {
  /// List of principal IDs to which to assign this role definition
  final List<PrincipalResponse>? principals;
  /// Role definition identifier
  final String roleDefinitionId;

  /// Creates a new [RoleAssignmentItemResponse].
  /// [principals] List of principal IDs to which to assign this role definition
  /// [roleDefinitionId] Role definition identifier
  RoleAssignmentItemResponse({
    this.principals,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': ?principals == null ? null : pulumi.Input.encodeList<PrincipalResponse, Map<String, dynamic>>(principals!, (value) => value.toMap()),
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory RoleAssignmentItemResponse.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentItemResponse(
      principals: map['principals'] == null ? null : pulumi.Input.decodeList<PrincipalResponse>(map['principals'], (value) => PrincipalResponse.fromMap((value as Map).cast<String, dynamic>())),
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

