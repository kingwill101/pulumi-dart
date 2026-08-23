// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointScheduleActionResponse {
  /// Expected value is 'InvokeBatchEndpoint'.
  final pulumi.Input<String> actionType;
  /// [Required] Defines Schedule action definition details.
  /// &lt;see href="TBD" /&gt;
  final pulumi.Input<dynamic> endpointInvocationDefinition;

  /// Creates a new [EndpointScheduleActionResponse].
  /// [actionType] Expected value is 'InvokeBatchEndpoint'.
  /// [endpointInvocationDefinition] [Required] Defines Schedule action definition details.
  const EndpointScheduleActionResponse({
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
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      endpointInvocationDefinition: pulumi.Input.fromValue(map['endpointInvocationDefinition']),
    );
  }
}
