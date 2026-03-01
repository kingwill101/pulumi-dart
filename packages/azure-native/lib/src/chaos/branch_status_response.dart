// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_status_response.dart';

/// Model that represents the a list of actions and action statuses.
class BranchStatusResponse {
  /// The array of actions.
  final List<ActionStatusResponse> actions;
  /// The id of the branch status.
  final String branchId;
  /// The name of the branch status.
  final String branchName;
  /// The status of the branch.
  final String status;

  /// Creates a new [BranchStatusResponse].
  /// [actions] The array of actions.
  /// [branchId] The id of the branch status.
  /// [branchName] The name of the branch status.
  /// [status] The status of the branch.
  BranchStatusResponse({
    required this.actions,
    required this.branchId,
    required this.branchName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<ActionStatusResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'branchId': branchId,
      'branchName': branchName,
      'status': status,
    };
  }

  factory BranchStatusResponse.fromMap(Map<String, dynamic> map) {
    return BranchStatusResponse(
      actions: pulumi.Input.decodeList<ActionStatusResponse>(map['actions'], (value) => ActionStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      branchId: map['branchId'] as String,
      branchName: map['branchName'] as String,
      status: map['status'] as String,
    );
  }
}

