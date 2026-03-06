// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_response.dart';

/// Role assignment item that indicates which principals should be assigned this role definition
class RoleAssignmentItemResponse {
  /// List of principal IDs to which to assign this role definition
  final pulumi.Input<List<PrincipalResponse>>? principals;
  /// Role definition identifier
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [RoleAssignmentItemResponse].
  /// [principals] List of principal IDs to which to assign this role definition
  /// [roleDefinitionId] Role definition identifier
  const RoleAssignmentItemResponse({
    this.principals,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': ?pulumi.Input.mapOptionalInputValue<List<PrincipalResponse>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<PrincipalResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory RoleAssignmentItemResponse.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentItemResponse(
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrincipalResponse>(guardedValue, (value) => PrincipalResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}

