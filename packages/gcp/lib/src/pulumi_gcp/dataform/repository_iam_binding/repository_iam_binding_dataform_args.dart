// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_iam_binding_condition/repository_iam_binding_condition_dataform.dart';

/// The set of arguments for RepositoryIamBinding.
class RepositoryIamBindingDataformArgs {
  final pulumi.Input<RepositoryIamBindingConditionDataform>? condition;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;
  final pulumi.Input<String> role;

  RepositoryIamBindingDataformArgs({
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
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          RepositoryIamBindingConditionDataform,
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

  factory RepositoryIamBindingDataformArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamBindingDataformArgs(
      condition:
          pulumi.Input.asOptionalInput<RepositoryIamBindingConditionDataform>(
              map['condition']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asInput<String>(map['repository']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
