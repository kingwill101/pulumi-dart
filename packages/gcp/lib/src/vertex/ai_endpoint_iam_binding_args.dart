// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_iam_binding_condition.dart';

/// {@template pulumi_vertex_ai_endpoint_iam_binding_ai_endpoint_iam_binding_args_doc}
/// The set of arguments for AiEndpointIamBinding.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_endpoint_iam_binding_ai_endpoint_iam_binding_args_doc}
class AiEndpointIamBindingArgs {
  final pulumi.Input<AiEndpointIamBindingCondition>? condition;
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [AiEndpointIamBindingArgs].
  /// [condition] Optional.
  /// [endpoint] Required.
  /// [location] Optional.
  /// [members] Required.
  /// [project] Optional.
  /// [role] Required.
  AiEndpointIamBindingArgs({
    AiEndpointIamBindingCondition? condition,
    required String endpoint,
    String? location,
    required List<String> members,
    String? project,
    required String role,
  }) : condition = pulumi.Input.asOptionalInput<AiEndpointIamBindingCondition>(
         condition,
       ),
       endpoint = pulumi.Input.asInput<String>(endpoint),
       location = pulumi.Input.asOptionalInput<String>(location),
       members = pulumi.Input.asInput<List<String>>(members),
       project = pulumi.Input.asOptionalInput<String>(project),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            AiEndpointIamBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'endpoint': endpoint,
      'location': ?location,
      'members': members,
      'project': ?project,
      'role': role,
    };
  }

  factory AiEndpointIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : AiEndpointIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      endpoint: map['endpoint'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
