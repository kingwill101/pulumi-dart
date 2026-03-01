// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_member_condition.dart';

/// {@template pulumi_vertex_ai_endpoint_iam_member_ai_endpoint_iam_member_args_doc}
/// The set of arguments for AiEndpointIamMember.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_iam_member_ai_endpoint_iam_member_args_doc}
class AiEndpointIamMemberArgs {
  final pulumi.Input<AiEndpointIamMemberCondition>? condition;
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [AiEndpointIamMemberArgs].
  /// [condition] Optional.
  /// [endpoint] Required.
  /// [location] Optional.
  /// [member] Required.
  /// [project] Optional.
  /// [role] Required.
  AiEndpointIamMemberArgs({
    AiEndpointIamMemberCondition? condition,
    required String endpoint,
    String? location,
    required String member,
    String? project,
    required String role,
  }) : condition = pulumi.Input.asOptionalInput<AiEndpointIamMemberCondition>(
         condition,
       ),
       endpoint = pulumi.Input.asInput<String>(endpoint),
       location = pulumi.Input.asOptionalInput<String>(location),
       member = pulumi.Input.asInput<String>(member),
       project = pulumi.Input.asOptionalInput<String>(project),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointIamMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'endpoint': endpoint,
      'location': ?location,
      'member': member,
      'project': ?project,
      'role': role,
    };
  }

  factory AiEndpointIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamMemberArgs(
      condition: map['condition'] == null
          ? null
          : AiEndpointIamMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      endpoint: map['endpoint'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
