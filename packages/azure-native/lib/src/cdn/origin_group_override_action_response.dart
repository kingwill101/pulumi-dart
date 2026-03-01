// ignore_for_file: unused_element, unnecessary_cast

import 'origin_group_override_action_parameters_response.dart';

/// Defines the origin group override action for the delivery rule.
class OriginGroupOverrideActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'OriginGroupOverride'.
  final String name;
  /// Defines the parameters for the action.
  final OriginGroupOverrideActionParametersResponse parameters;

  /// Creates a new [OriginGroupOverrideActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  OriginGroupOverrideActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory OriginGroupOverrideActionResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideActionResponse(
      name: map['name'] as String,
      parameters: OriginGroupOverrideActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

