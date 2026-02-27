// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../source_iam_member_condition/source_iam_member_condition.dart';

/// The set of arguments for SourceIamMember.
class SourceIamMemberArgs {
  final pulumi.Input<SourceIamMemberCondition>? condition;
  final pulumi.Input<String> member;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;
  final pulumi.Input<String> role;
  final pulumi.Input<String> source;

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
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          SourceIamMemberCondition,
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
      condition: pulumi.Input.asOptionalInput<SourceIamMemberCondition>(
          map['condition']),
      member: pulumi.Input.asInput<String>(map['member']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      role: pulumi.Input.asInput<String>(map['role']),
      source: pulumi.Input.asInput<String>(map['source']),
    );
  }
}
