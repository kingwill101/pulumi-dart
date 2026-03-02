// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_status_response.dart';

/// Model that represents the a list of actions and action statuses.
class BranchStatusResponse {
  /// The array of actions.
  final pulumi.Input<List<ActionStatusResponse>> actions;
  /// The id of the branch status.
  final pulumi.Input<String> branchId;
  /// The name of the branch status.
  final pulumi.Input<String> branchName;
  /// The status of the branch.
  final pulumi.Input<String> status;

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
      'actions': pulumi.Input.mapInputValue<List<ActionStatusResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ActionStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'branchId': branchId,
      'branchName': branchName,
      'status': status,
    };
  }

  factory BranchStatusResponse.fromMap(Map<String, dynamic> map) {
    return BranchStatusResponse(
      actions: (pulumi.Input.decodeList<ActionStatusResponse>(map['actions'], (value) => ActionStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      branchId: (map['branchId'] as String).input(),
      branchName: (map['branchName'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

