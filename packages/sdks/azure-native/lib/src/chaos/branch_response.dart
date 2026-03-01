// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_action_response.dart';

/// Model that represents a branch in the step. 9 total per experiment.
class BranchResponse {
  /// List of actions.
  final List<ContinuousActionResponse> actions;
  /// String of the branch name.
  final String name;

  /// Creates a new [BranchResponse].
  /// [actions] List of actions.
  /// [name] String of the branch name.
  BranchResponse({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<ContinuousActionResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'name': name,
    };
  }

  factory BranchResponse.fromMap(Map<String, dynamic> map) {
    return BranchResponse(
      actions: pulumi.Input.decodeList<ContinuousActionResponse>(map['actions'], (value) => ContinuousActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

