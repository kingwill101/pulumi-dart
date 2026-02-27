// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_endpoint_iam_member_condition/ai_endpoint_iam_member_condition.dart';

/// The set of arguments for AiEndpointIamMember.
class AiEndpointIamMemberArgs {
  final pulumi.Input<AiEndpointIamMemberCondition>? condition;
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

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
      map['condition'] = pulumi.Input.mapOptionalInputValue<
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
      condition: pulumi.Input.asOptionalInput<AiEndpointIamMemberCondition>(
          map['condition']),
      endpoint: pulumi.Input.asInput<String>(map['endpoint']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      member: pulumi.Input.asInput<String>(map['member']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
