// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RepositoryIamPolicy.
class RepositoryIamPolicyDataformArgs {
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;

  RepositoryIamPolicyDataformArgs({
    required this.policyData,
    this.project,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyData'] = policyData;
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

  factory RepositoryIamPolicyDataformArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamPolicyDataformArgs(
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asInput<String>(map['repository']),
    );
  }
}
