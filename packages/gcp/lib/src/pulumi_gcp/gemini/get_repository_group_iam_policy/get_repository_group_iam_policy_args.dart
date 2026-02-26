// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRepositoryGroupIamPolicy.
class GetRepositoryGroupIamPolicyArgs {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  final Input<String> codeRepositoryIndex;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> repositoryGroupId;

  GetRepositoryGroupIamPolicyArgs({
    required this.codeRepositoryIndex,
    this.location,
    this.project,
    required this.repositoryGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeRepositoryIndex'] = codeRepositoryIndex;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryGroupId'] = repositoryGroupId;
    return map;
  }

  factory GetRepositoryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryGroupIamPolicyArgs(
      codeRepositoryIndex: Input.asInput<String>(map['codeRepositoryIndex']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryGroupId: Input.asInput<String>(map['repositoryGroupId']),
    );
  }
}
