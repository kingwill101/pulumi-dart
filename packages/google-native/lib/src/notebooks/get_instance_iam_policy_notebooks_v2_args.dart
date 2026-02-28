// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v2_get_instance_iam_policy_notebooks_v2_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v2_get_instance_iam_policy_notebooks_v2_args_doc}
class GetInstanceIamPolicyNotebooksV2Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceIamPolicyNotebooksV2Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInstanceIamPolicyNotebooksV2Args({
    required String instanceId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : instanceId = pulumi.Input.asInput<String>(instanceId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
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

  factory GetInstanceIamPolicyNotebooksV2Args.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceIamPolicyNotebooksV2Args(
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
