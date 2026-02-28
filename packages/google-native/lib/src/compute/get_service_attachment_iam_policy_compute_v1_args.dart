// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_service_attachment_iam_policy_compute_v1_args_doc}
/// Arguments for getServiceAttachmentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_service_attachment_iam_policy_compute_v1_args_doc}
class GetServiceAttachmentIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetServiceAttachmentIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetServiceAttachmentIamPolicyComputeV1Args({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String region,
    required String resource,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['resource'] = resource;
    return map;
  }

  factory GetServiceAttachmentIamPolicyComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetServiceAttachmentIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      resource: map['resource'] as String,
    );
  }
}
