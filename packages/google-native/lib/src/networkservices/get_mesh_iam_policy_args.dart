// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_mesh_iam_policy_args_doc}
/// Arguments for getMeshIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_mesh_iam_policy_args_doc}
class GetMeshIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMeshIamPolicyArgs].
  /// [location] Required.
  /// [meshId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMeshIamPolicyArgs({
    required String location,
    required String meshId,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        meshId = pulumi.Input.asInput<String>(meshId),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['meshId'] = meshId;
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

  factory GetMeshIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshIamPolicyArgs(
      location: map['location'] as String,
      meshId: map['meshId'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
