// ignore_for_file: unused_element, unnecessary_cast


class ServiceEventRuleEndpoint {
  /// Message receiving terminal endpoint type
  final String? endpointType;
  /// Message Receiving Terminal Endpoint
  final String? endpointValue;

  /// Creates a new [ServiceEventRuleEndpoint].
  /// [endpointType] Message receiving terminal endpoint type
  /// [endpointValue] Message Receiving Terminal Endpoint
  ServiceEventRuleEndpoint({
    this.endpointType,
    this.endpointValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'endpointValue': ?endpointValue,
    };
  }

  factory ServiceEventRuleEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceEventRuleEndpoint(
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      endpointValue: map['endpointValue'] == null ? null : map['endpointValue'] as String,
    );
  }
}

