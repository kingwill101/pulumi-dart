// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_app_engine_version_iam_policy_get_app_engine_version_iam_policy_args_doc}
/// Arguments for getAppEngineVersionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_app_engine_version_iam_policy_get_app_engine_version_iam_policy_args_doc}
class GetAppEngineVersionIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> service;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> versionId;

  /// Creates a new [GetAppEngineVersionIamPolicyArgs].
  /// [appId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [service] Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  /// [versionId] Used to find the parent resource to bind the IAM policy to
  GetAppEngineVersionIamPolicyArgs({
    required String appId,
    String? project,
    required String service,
    required String versionId,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asInput<String>(service),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
      'service': service,
      'versionId': versionId,
    };
  }

  factory GetAppEngineVersionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppEngineVersionIamPolicyArgs(
      appId: map['appId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

