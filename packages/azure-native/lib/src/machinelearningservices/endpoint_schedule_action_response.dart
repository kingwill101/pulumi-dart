// ignore_for_file: unused_element, unnecessary_cast


class EndpointScheduleActionResponse {
  /// Expected value is 'InvokeBatchEndpoint'.
  final String actionType;
  /// [Required] Defines Schedule action definition details.
  /// <see href="TBD" />
  final dynamic endpointInvocationDefinition;

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
      actionType: map['actionType'] as String,
      endpointInvocationDefinition: map['endpointInvocationDefinition'],
    );
  }
}

