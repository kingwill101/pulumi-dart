// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_regional_secret_iam_policy_get_regional_secret_iam_policy_args_doc}
/// Arguments for getRegionalSecretIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_regional_secret_iam_policy_get_regional_secret_iam_policy_args_doc}
class GetRegionalSecretIamPolicyArgs {
  /// The location of the regional secret. eg us-central1
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> secretId;

  /// Creates a new [GetRegionalSecretIamPolicyArgs].
  /// [location] The location of the regional secret. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [secretId] Used to find the parent resource to bind the IAM policy to
  GetRegionalSecretIamPolicyArgs({
    String? location,
    String? project,
    required String secretId,
  }) : location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       secretId = pulumi.Input.asInput<String>(secretId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetRegionalSecretIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretIamPolicyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secretId: map['secretId'] as String,
    );
  }
}
