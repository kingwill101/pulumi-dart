// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_operation_iam_policy_args_doc}
/// Arguments for getRegionOperationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_operation_iam_policy_args_doc}
class GetRegionOperationIamPolicyArgs {
  final pulumi.Input<String> operationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionOperationIamPolicyArgs].
  /// [operationId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionOperationIamPolicyArgs({
    required String operationId,
    String? project,
    required String regionId,
  }) : operationId = pulumi.Input.asInput<String>(operationId),
       project = pulumi.Input.asOptionalInput<String>(project),
       regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionOperationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionOperationIamPolicyArgs(
      operationId: map['operationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
    );
  }
}
