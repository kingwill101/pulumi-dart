// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securesourcemanager_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_get_instance_iam_policy_get_instance_iam_policy_args_doc}
class GetInstanceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> instanceId;

  /// The location for the Instance.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceIamPolicyArgs].
  /// [instanceId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location for the Instance.
  /// [project] The ID of the project in which the resource belongs.
  GetInstanceIamPolicyArgs({
    required String instanceId,
    String? location,
    String? project,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs(
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
