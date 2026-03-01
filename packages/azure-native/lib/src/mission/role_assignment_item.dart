// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal.dart';

/// Role assignment item that indicates which principals should be assigned this role definition
class RoleAssignmentItem {
  /// List of principal IDs to which to assign this role definition
  final List<Principal>? principals;
  /// Role definition identifier
  final String roleDefinitionId;

  /// Creates a new [RoleAssignmentItem].
  /// [principals] List of principal IDs to which to assign this role definition
  /// [roleDefinitionId] Role definition identifier
  RoleAssignmentItem({
    this.principals,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': ?principals == null ? null : pulumi.Input.encodeList<Principal, Map<String, dynamic>>(principals!, (value) => value.toMap()),
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory RoleAssignmentItem.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentItem(
      principals: map['principals'] == null ? null : pulumi.Input.decodeList<Principal>(map['principals'], (value) => Principal.fromMap((value as Map).cast<String, dynamic>())),
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

