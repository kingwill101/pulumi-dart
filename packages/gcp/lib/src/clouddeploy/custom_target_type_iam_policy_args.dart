// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_custom_target_type_iam_policy_custom_target_type_iam_policy_args_doc}
/// The set of arguments for CustomTargetTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_custom_target_type_iam_policy_custom_target_type_iam_policy_args_doc}
class CustomTargetTypeIamPolicyArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomTargetTypeIamPolicyArgs].
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  CustomTargetTypeIamPolicyArgs({
    String? location,
    String? name,
    required String policyData,
    String? project,
  })  : location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        policyData = pulumi.Input.asInput<String>(policyData),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CustomTargetTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeIamPolicyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyData: map['policyData'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
