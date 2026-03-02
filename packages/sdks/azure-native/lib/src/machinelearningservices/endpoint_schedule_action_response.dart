// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointScheduleActionResponse {
  /// Expected value is 'InvokeBatchEndpoint'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  /// <see href="TBD" />
  final pulumi.Input<dynamic> endpointInvocationDefinition;

  /// Creates a new [EndpointScheduleActionResponse].
  /// [actionType] Expected value is 'InvokeBatchEndpoint'.
  /// [endpointInvocationDefinition] [Required] Defines Schedule action definition details.
  EndpointScheduleActionResponse({
    required this.actionType,
    required this.endpointInvocationDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'endpointInvocationDefinition': endpointInvocationDefinition,
    };
  }

  factory EndpointScheduleActionResponse.fromMap(Map<String, dynamic> map) {
    return EndpointScheduleActionResponse(
      actionType: (map['actionType'] as String).input(),
      endpointInvocationDefinition: (map['endpointInvocationDefinition']).input(),
    );
  }
}

