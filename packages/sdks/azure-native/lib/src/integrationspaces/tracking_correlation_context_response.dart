// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The tracking correlation context.
class TrackingCorrelationContextResponse {
  /// The operation name for correlation context.
  final pulumi.Input<String>? operationName;
  /// The operation type for correlation context.
  final pulumi.Input<String>? operationType;
  /// The name of the correlation property.
  final pulumi.Input<String>? propertyName;
  /// The template expression for correlation context property value.
  final pulumi.Input<String>? value;

  /// Creates a new [TrackingCorrelationContextResponse].
  /// [operationName] The operation name for correlation context.
  /// [operationType] The operation type for correlation context.
  /// [propertyName] The name of the correlation property.
  /// [value] The template expression for correlation context property value.
  const TrackingCorrelationContextResponse({
    this.operationName,
    this.operationType,
    this.propertyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationName': ?operationName,
      'operationType': ?operationType,
      'propertyName': ?propertyName,
      'value': ?value,
    };
  }

  factory TrackingCorrelationContextResponse.fromMap(Map<String, dynamic> map) {
    return TrackingCorrelationContextResponse(
      operationName: (() { final guardedValue = map['operationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyName: (() { final guardedValue = map['propertyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

