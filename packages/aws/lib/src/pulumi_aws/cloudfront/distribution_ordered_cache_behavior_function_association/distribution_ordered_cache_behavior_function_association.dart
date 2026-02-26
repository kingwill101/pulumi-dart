// ignore_for_file: unused_element, unnecessary_cast

class DistributionOrderedCacheBehaviorFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request` or `viewer-response`.
  final String eventType;

  /// ARN of the CloudFront function.
  final String functionArn;

  DistributionOrderedCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventType'] = eventType;
    map['functionArn'] = functionArn;
    return map;
  }

  factory DistributionOrderedCacheBehaviorFunctionAssociation.fromMap(
      Map<String, dynamic> map) {
    return DistributionOrderedCacheBehaviorFunctionAssociation(
      eventType: map['eventType'] as String,
      functionArn: map['functionArn'] as String,
    );
  }
}
