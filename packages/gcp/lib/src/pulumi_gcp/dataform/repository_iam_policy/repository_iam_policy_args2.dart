// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RepositoryIamPolicy.
class RepositoryIamPolicyArgs2 {
  final Input<String> policyData;
  final Input<String>? project;
  final Input<String>? region;
  final Input<String> repository;

  RepositoryIamPolicyArgs2({
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

  factory RepositoryIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return RepositoryIamPolicyArgs2(
      policyData: Input.asInput<String>(map['policyData']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
    );
  }
}
