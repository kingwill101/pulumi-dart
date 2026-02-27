// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_iam_member_condition/repository_iam_member_condition_dataform.dart';

/// The set of arguments for RepositoryIamMember.
class RepositoryIamMemberDataformArgs {
  final pulumi.Input<RepositoryIamMemberConditionDataform>? condition;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;
  final pulumi.Input<String> role;

  RepositoryIamMemberDataformArgs({
    this.condition,
    required this.member,
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
          RepositoryIamMemberConditionDataform,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
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

  factory RepositoryIamMemberDataformArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamMemberDataformArgs(
      condition:
          pulumi.Input.asOptionalInput<RepositoryIamMemberConditionDataform>(
              map['condition']),
      member: pulumi.Input.asInput<String>(map['member']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asInput<String>(map['repository']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
