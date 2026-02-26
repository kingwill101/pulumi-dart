// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../source_iam_member_condition/source_iam_member_condition.dart';

/// The set of arguments for SourceIamMember.
class SourceIamMemberArgs {
  final Input<SourceIamMemberCondition>? condition;
  final Input<String> member;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final Input<String> organization;
  final Input<String> role;
  final Input<String> source;

  SourceIamMemberArgs({
    this.condition,
    required this.member,
    required this.organization,
    required this.role,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<SourceIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['organization'] = organization;
    map['role'] = role;
    map['source'] = source;
    return map;
  }

  factory SourceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return SourceIamMemberArgs(
      condition:
          Input.asOptionalInput<SourceIamMemberCondition>(map['condition']),
      member: Input.asInput<String>(map['member']),
      organization: Input.asInput<String>(map['organization']),
      role: Input.asInput<String>(map['role']),
      source: Input.asInput<String>(map['source']),
    );
  }
}
