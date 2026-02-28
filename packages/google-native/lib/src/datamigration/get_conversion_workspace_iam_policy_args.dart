// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_conversion_workspace_iam_policy_args_doc}
/// Arguments for getConversionWorkspaceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_conversion_workspace_iam_policy_args_doc}
class GetConversionWorkspaceIamPolicyArgs {
  final pulumi.Input<String> conversionWorkspaceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversionWorkspaceIamPolicyArgs].
  /// [conversionWorkspaceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConversionWorkspaceIamPolicyArgs({
    required String conversionWorkspaceId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : conversionWorkspaceId =
            pulumi.Input.asInput<String>(conversionWorkspaceId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversionWorkspaceId'] = conversionWorkspaceId;
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

  factory GetConversionWorkspaceIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetConversionWorkspaceIamPolicyArgs(
      conversionWorkspaceId: map['conversionWorkspaceId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
