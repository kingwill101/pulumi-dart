// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionCacheBehaviorFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final String eventType;

  /// ARN of the CloudFront function.
  final String functionArn;

  /// Creates a new [MultitenantDistributionCacheBehaviorFunctionAssociation].
  /// [eventType] Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  /// [functionArn] ARN of the CloudFront function.
  MultitenantDistributionCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventType'] = eventType;
    map['functionArn'] = functionArn;
    return map;
  }

  factory MultitenantDistributionCacheBehaviorFunctionAssociation.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehaviorFunctionAssociation(
      eventType: map['eventType'] as String,
      functionArn: map['functionArn'] as String,
    );
  }
}
