// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FunctionAssociation
class FunctionAssociation {
  /// The event type of the function, either ``viewer-request`` or ``viewer-response``. You cannot use origin-facing event types (``origin-request`` and ``origin-response``) with a CloudFront function.
  final String? eventType;
  /// The Amazon Resource Name (ARN) of the function.
  final String? functionARN;

  /// Creates a new [FunctionAssociation].
  /// [eventType] The event type of the function, either ``viewer-request`` or ``viewer-response``. You cannot use origin-facing event types (``origin-request`` and ``origin-response``) with a CloudFront function.
  /// [functionARN] The Amazon Resource Name (ARN) of the function.
  FunctionAssociation({
    this.eventType,
    this.functionARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?eventType,
      'functionARN': ?functionARN,
    };
  }

  factory FunctionAssociation.fromMap(Map<String, dynamic> map) {
    return FunctionAssociation(
      eventType: map['eventType'] == null ? null : map['eventType'] as String,
      functionARN: map['functionARN'] == null ? null : map['functionARN'] as String,
    );
  }
}

