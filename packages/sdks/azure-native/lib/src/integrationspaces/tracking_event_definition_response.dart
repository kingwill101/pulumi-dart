// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The tracking event definition.
class TrackingEventDefinitionResponse {
  /// The operation name.
  final pulumi.Input<String>? operationName;
  /// The operation type.
  final pulumi.Input<String>? operationType;
  /// The properties to be collected for event.
  final pulumi.Input<Map<String, dynamic>>? properties;

  /// Creates a new [TrackingEventDefinitionResponse].
  /// [operationName] The operation name.
  /// [operationType] The operation type.
  /// [properties] The properties to be collected for event.
  TrackingEventDefinitionResponse({
    this.operationName,
    this.operationType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationName': ?operationName,
      'operationType': ?operationType,
      'properties': ?properties,
    };
  }

  factory TrackingEventDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return TrackingEventDefinitionResponse(
      operationName: (() { final guardedValue = map['operationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

