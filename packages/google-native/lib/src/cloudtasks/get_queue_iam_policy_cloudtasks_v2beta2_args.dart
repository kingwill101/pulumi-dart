// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtasks_v2beta2_get_queue_iam_policy_cloudtasks_v2beta2_args_doc}
/// Arguments for getQueueIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta2_get_queue_iam_policy_cloudtasks_v2beta2_args_doc}
class GetQueueIamPolicyCloudtasksV2beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQueueIamPolicyCloudtasksV2beta2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [queueId] Required.
  GetQueueIamPolicyCloudtasksV2beta2Args({
    required String location,
    String? project,
    required String queueId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       queueId = pulumi.Input.asInput<String>(queueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'queueId': queueId,
    };
  }

  factory GetQueueIamPolicyCloudtasksV2beta2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetQueueIamPolicyCloudtasksV2beta2Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      queueId: map['queueId'] as String,
    );
  }
}
