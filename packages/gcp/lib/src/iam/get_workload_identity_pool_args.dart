// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workload_identity_pool_get_workload_identity_pool_args_doc}
/// Arguments for getWorkloadIdentityPool.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workload_identity_pool_get_workload_identity_pool_args_doc}
class GetWorkloadIdentityPoolArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The id of the pool which is the
  /// final component of the resource name.
  ///
  /// - - -
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [GetWorkloadIdentityPoolArgs].
  /// [project] The project in which the resource belongs. If it
  /// [workloadIdentityPoolId] The id of the pool which is the
  GetWorkloadIdentityPoolArgs({
    String? project,
    required String workloadIdentityPoolId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        workloadIdentityPoolId =
            pulumi.Input.asInput<String>(workloadIdentityPoolId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetWorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolArgs(
      project: map['project'] == null ? null : map['project'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}
