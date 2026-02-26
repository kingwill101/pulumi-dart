// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_iam_member_condition/repository_iam_member_condition2.dart';

/// The set of arguments for RepositoryIamMember.
class RepositoryIamMemberArgs2 {
  final Input<RepositoryIamMemberCondition2>? condition;
  final Input<String> member;
  final Input<String>? project;
  final Input<String>? region;
  final Input<String> repository;
  final Input<String> role;

  RepositoryIamMemberArgs2({
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
      map['condition'] = Input.mapOptionalInputValue<
          RepositoryIamMemberCondition2,
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

  factory RepositoryIamMemberArgs2.fromMap(Map<String, dynamic> map) {
    return RepositoryIamMemberArgs2(
      condition: Input.asOptionalInput<RepositoryIamMemberCondition2>(
          map['condition']),
      member: Input.asInput<String>(map['member']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
