// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_iam_binding_condition/repository_iam_binding_condition2.dart';

/// The set of arguments for RepositoryIamBinding.
class RepositoryIamBindingArgs2 {
  final Input<RepositoryIamBindingCondition2>? condition;
  final Input<List<String>> members;
  final Input<String>? project;
  final Input<String>? region;
  final Input<String> repository;
  final Input<String> role;

  RepositoryIamBindingArgs2({
    this.condition,
    required this.members,
    this.project,
    this.region,
    required this.repository,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          RepositoryIamBindingCondition2,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    map['role'] = role;
    return map;
  }

  factory RepositoryIamBindingArgs2.fromMap(Map<String, dynamic> map) {
    return RepositoryIamBindingArgs2(
      condition: Input.asOptionalInput<RepositoryIamBindingCondition2>(
          map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
