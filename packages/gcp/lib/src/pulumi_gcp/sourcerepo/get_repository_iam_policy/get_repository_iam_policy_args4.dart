// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRepositoryIamPolicy.
class GetRepositoryIamPolicyArgs4 {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> repository;

  GetRepositoryIamPolicyArgs4({
    this.project,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory GetRepositoryIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArgs4(
      project: Input.asOptionalInput<String>(map['project']),
      repository: Input.asInput<String>(map['repository']),
    );
  }
}
