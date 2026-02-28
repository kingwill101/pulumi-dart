// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_autoscaling_policy_iam_policy_dataproc_v1beta2_args_doc}
class GetAutoscalingPolicyIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutoscalingPolicyIamPolicyDataprocV1beta2Args].
  /// [autoscalingPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAutoscalingPolicyIamPolicyDataprocV1beta2Args({
    required String autoscalingPolicyId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingPolicyId'] = autoscalingPolicyId;
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

  factory GetAutoscalingPolicyIamPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetAutoscalingPolicyIamPolicyDataprocV1beta2Args(
      autoscalingPolicyId: map['autoscalingPolicyId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
