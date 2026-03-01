// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_cloud_run_service_iam_policy_get_web_cloud_run_service_iam_policy_args_doc}
/// Arguments for getWebCloudRunServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_cloud_run_service_iam_policy_get_web_cloud_run_service_iam_policy_args_doc}
class GetWebCloudRunServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> cloudRunServiceName;

  /// The location of a cloud run service. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWebCloudRunServiceIamPolicyArgs].
  /// [cloudRunServiceName] Used to find the parent resource to bind the IAM policy to
  /// [location] The location of a cloud run service. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  GetWebCloudRunServiceIamPolicyArgs({
    required String cloudRunServiceName,
    String? location,
    String? project,
  }) : cloudRunServiceName = pulumi.Input.asInput<String>(cloudRunServiceName),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunServiceName': cloudRunServiceName,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetWebCloudRunServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebCloudRunServiceIamPolicyArgs(
      cloudRunServiceName: map['cloudRunServiceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
