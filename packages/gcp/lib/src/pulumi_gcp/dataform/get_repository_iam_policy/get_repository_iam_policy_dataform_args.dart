// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepositoryIamPolicy.
class GetRepositoryIamPolicyDataformArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repository;

  GetRepositoryIamPolicyDataformArgs({
    this.project,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory GetRepositoryIamPolicyDataformArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyDataformArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asInput<String>(map['repository']),
    );
  }
}
