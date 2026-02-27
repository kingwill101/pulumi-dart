// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_endpoint_iam_binding_condition/ai_endpoint_iam_binding_condition.dart';

/// The set of arguments for AiEndpointIamBinding.
class AiEndpointIamBindingArgs {
  final pulumi.Input<AiEndpointIamBindingCondition>? condition;
  final pulumi.Input<String> endpoint;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  AiEndpointIamBindingArgs({
    this.condition,
    required this.endpoint,
    this.location,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          AiEndpointIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['endpoint'] = endpoint;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory AiEndpointIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointIamBindingArgs(
      condition: pulumi.Input.asOptionalInput<AiEndpointIamBindingCondition>(
          map['condition']),
      endpoint: pulumi.Input.asInput<String>(map['endpoint']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
