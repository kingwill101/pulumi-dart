// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_featurestore_iam_policy_args_doc}
/// Arguments for getFeaturestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_featurestore_iam_policy_args_doc}
class GetFeaturestoreIamPolicyArgs {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreIamPolicyArgs].
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFeaturestoreIamPolicyArgs({
    required String featurestoreId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featurestoreId'] = featurestoreId;
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

  factory GetFeaturestoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreIamPolicyArgs(
      featurestoreId: map['featurestoreId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
