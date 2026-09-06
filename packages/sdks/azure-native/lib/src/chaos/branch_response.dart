// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents a branch in the step. 9 total per experiment.
class BranchResponse {
  /// List of actions.
  final pulumi.Input<List<dynamic>> actions;
  /// String of the branch name.
  final pulumi.Input<String> name;

  /// Creates a new [BranchResponse].
  /// [actions] List of actions.
  /// [name] String of the branch name.
  const BranchResponse({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'name': name,
    };
  }

  factory BranchResponse.fromMap(Map<String, dynamic> map) {
    return BranchResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<dynamic>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
