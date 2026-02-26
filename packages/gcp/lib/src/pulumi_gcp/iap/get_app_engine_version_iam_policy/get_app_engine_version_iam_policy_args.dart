// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppEngineVersionIamPolicy.
class GetAppEngineVersionIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> appId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Service id of the App Engine application Used to find the parent resource to bind the IAM policy to
  final Input<String> service;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> versionId;

  GetAppEngineVersionIamPolicyArgs({
    required this.appId,
    this.project,
    required this.service,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    map['versionId'] = versionId;
    return map;
  }

  factory GetAppEngineVersionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppEngineVersionIamPolicyArgs(
      appId: Input.asInput<String>(map['appId']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
