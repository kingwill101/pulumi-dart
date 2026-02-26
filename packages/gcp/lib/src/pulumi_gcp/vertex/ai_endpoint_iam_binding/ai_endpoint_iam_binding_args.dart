// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_iam_binding_condition/ai_endpoint_iam_binding_condition.dart';

/// The set of arguments for AiEndpointIamBinding.
class AiEndpointIamBindingArgs {
  final Input<AiEndpointIamBindingCondition>? condition;
  final Input<String> endpoint;
  final Input<String>? location;
  final Input<List<String>> members;
  final Input<String>? project;
  final Input<String> role;

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
      map['condition'] = Input.mapOptionalInputValue<
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
      condition: Input.asOptionalInput<AiEndpointIamBindingCondition>(
          map['condition']),
      endpoint: Input.asInput<String>(map['endpoint']),
      location: Input.asOptionalInput<String>(map['location']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
