// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_iam_member_condition/ai_endpoint_iam_member_condition.dart';

/// The set of arguments for AiEndpointIamMember.
class AiEndpointIamMemberArgs {
  final Input<AiEndpointIamMemberCondition>? condition;
  final Input<String> endpoint;
  final Input<String>? location;
  final Input<String> member;
  final Input<String>? project;
  final Input<String> role;

  AiEndpointIamMemberArgs({
    this.condition,
    required this.endpoint,
    this.location,
    required this.member,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          AiEndpointIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['endpoint'] = endpoint;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory AiEndpointIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamMemberArgs(
      condition:
          Input.asOptionalInput<AiEndpointIamMemberCondition>(map['condition']),
      endpoint: Input.asInput<String>(map['endpoint']),
      location: Input.asOptionalInput<String>(map['location']),
      member: Input.asInput<String>(map['member']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
