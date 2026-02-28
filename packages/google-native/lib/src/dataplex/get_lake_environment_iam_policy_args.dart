// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_environment_iam_policy_args_doc}
/// Arguments for getLakeEnvironmentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_environment_iam_policy_args_doc}
class GetLakeEnvironmentIamPolicyArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeEnvironmentIamPolicyArgs].
  /// [environmentId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetLakeEnvironmentIamPolicyArgs({
    required String environmentId,
    required String lakeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : environmentId = pulumi.Input.asInput<String>(environmentId),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['lakeId'] = lakeId;
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

  factory GetLakeEnvironmentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeEnvironmentIamPolicyArgs(
      environmentId: map['environmentId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
