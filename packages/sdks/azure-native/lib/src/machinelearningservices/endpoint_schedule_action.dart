// ignore_for_file: unused_element, unnecessary_cast


class EndpointScheduleAction {
  /// Expected value is 'InvokeBatchEndpoint'.
  final String actionType;
  /// [Required] Defines Schedule action definition details.
  /// <see href="TBD" />
  final dynamic endpointInvocationDefinition;

  /// Creates a new [EndpointScheduleAction].
  /// [actionType] Expected value is 'InvokeBatchEndpoint'.
  /// [endpointInvocationDefinition] [Required] Defines Schedule action definition details.
  EndpointScheduleAction({
    required this.actionType,
    required this.endpointInvocationDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'endpointInvocationDefinition': endpointInvocationDefinition,
    };
  }

  factory EndpointScheduleAction.fromMap(Map<String, dynamic> map) {
    return EndpointScheduleAction(
      actionType: map['actionType'] as String,
      endpointInvocationDefinition: map['endpointInvocationDefinition'],
    );
  }
}

