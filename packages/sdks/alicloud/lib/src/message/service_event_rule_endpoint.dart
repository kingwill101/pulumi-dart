// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceEventRuleEndpoint {
  /// Message receiving terminal endpoint type
  final pulumi.Input<String>? endpointType;
  /// Message Receiving Terminal Endpoint
  final pulumi.Input<String>? endpointValue;

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
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointValue: (() { final guardedValue = map['endpointValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

