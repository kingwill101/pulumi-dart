// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FunctionAssociation
class FunctionAssociationResponse {
  /// The event type of the function, either ``viewer-request`` or ``viewer-response``. You cannot use origin-facing event types (``origin-request`` and ``origin-response``) with a CloudFront function.
  final pulumi.Input<String>? eventType;
  /// The Amazon Resource Name (ARN) of the function.
  final pulumi.Input<String>? functionARN;

  /// Creates a new [FunctionAssociationResponse].
  /// [eventType] The event type of the function, either ``viewer-request`` or ``viewer-response``. You cannot use origin-facing event types (``origin-request`` and ``origin-response``) with a CloudFront function.
  /// [functionARN] The Amazon Resource Name (ARN) of the function.
  const FunctionAssociationResponse({
    this.eventType,
    this.functionARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?eventType,
      'functionARN': ?functionARN,
    };
  }

  factory FunctionAssociationResponse.fromMap(Map<String, dynamic> map) {
    return FunctionAssociationResponse(
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionARN: (() { final guardedValue = map['functionARN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
