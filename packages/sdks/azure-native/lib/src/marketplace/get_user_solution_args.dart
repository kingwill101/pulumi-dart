// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_user_solution_args_doc}
/// Arguments for getUserSolution.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_user_solution_args_doc}
class GetUserSolutionArgs {
  /// The solution id
  final pulumi.Input<String> solutionId;

  /// Creates a new [GetUserSolutionArgs].
  /// [solutionId] The solution id
  const GetUserSolutionArgs({
    required this.solutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'solutionId': solutionId,
    };
  }

  factory GetUserSolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetUserSolutionArgs(
      solutionId: pulumi.Input.fromValue(map['solutionId'] as String),
    );
  }
}
