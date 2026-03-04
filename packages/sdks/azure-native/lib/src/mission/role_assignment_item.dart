// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal.dart';

/// Role assignment item that indicates which principals should be assigned this role definition
class RoleAssignmentItem {
  /// List of principal IDs to which to assign this role definition
  final pulumi.Input<List<Principal>>? principals;

  /// Role definition identifier
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [RoleAssignmentItem].
  /// [principals] List of principal IDs to which to assign this role definition
  /// [roleDefinitionId] Role definition identifier
  RoleAssignmentItem({this.principals, required this.roleDefinitionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals':
          ?pulumi.Input.mapOptionalInputValue<
            List<Principal>,
            List<Map<String, dynamic>>
          >(
            principals,
            (value) => pulumi.Input.encodeList<Principal, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory RoleAssignmentItem.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentItem(
      principals: (() {
        final guardedValue = map['principals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Principal>(
            guardedValue,
            (value) =>
                Principal.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      roleDefinitionId: pulumi.Input.fromValue(
        map['roleDefinitionId'] as String,
      ),
    );
  }
}
