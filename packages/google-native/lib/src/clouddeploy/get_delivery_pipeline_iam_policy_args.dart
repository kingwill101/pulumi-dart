// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_delivery_pipeline_iam_policy_args_doc}
/// Arguments for getDeliveryPipelineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_delivery_pipeline_iam_policy_args_doc}
class GetDeliveryPipelineIamPolicyArgs {
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeliveryPipelineIamPolicyArgs].
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDeliveryPipelineIamPolicyArgs({
    required String deliveryPipelineId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryPipelineId'] = deliveryPipelineId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeliveryPipelineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDeliveryPipelineIamPolicyArgs(
      deliveryPipelineId: map['deliveryPipelineId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
