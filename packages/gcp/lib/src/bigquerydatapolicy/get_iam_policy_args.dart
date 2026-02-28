// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquerydatapolicy_get_iam_policy_get_iam_policy_args_doc}
/// Arguments for getIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_get_iam_policy_get_iam_policy_args_doc}
class GetIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> dataPolicyId;

  /// The name of the location of the data policy.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetIamPolicyArgs].
  /// [dataPolicyId] Used to find the parent resource to bind the IAM policy to
  /// [location] The name of the location of the data policy.
  /// [project] The ID of the project in which the resource belongs.
  GetIamPolicyArgs({
    required String dataPolicyId,
    String? location,
    String? project,
  })  : dataPolicyId = pulumi.Input.asInput<String>(dataPolicyId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataPolicyId'] = dataPolicyId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs(
      dataPolicyId: map['dataPolicyId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
