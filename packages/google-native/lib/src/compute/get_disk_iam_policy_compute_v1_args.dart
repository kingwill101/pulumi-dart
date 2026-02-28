// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_disk_iam_policy_compute_v1_args_doc}
/// Arguments for getDiskIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_disk_iam_policy_compute_v1_args_doc}
class GetDiskIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiskIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  /// [zone] Required.
  GetDiskIamPolicyComputeV1Args({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String resource,
    required String zone,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        resource = pulumi.Input.asInput<String>(resource),
        zone = pulumi.Input.asInput<String>(zone);

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
    map['resource'] = resource;
    map['zone'] = zone;
    return map;
  }

  factory GetDiskIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetDiskIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      resource: map['resource'] as String,
      zone: map['zone'] as String,
    );
  }
}
