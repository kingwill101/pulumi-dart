// ignore_for_file: unused_element, unnecessary_cast

class DistributionDefaultCacheBehaviorFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request` or `viewer-response`.
  final String eventType;

  /// ARN of the CloudFront function.
  final String functionArn;

  DistributionDefaultCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventType'] = eventType;
    map['functionArn'] = functionArn;
    return map;
  }

  factory DistributionDefaultCacheBehaviorFunctionAssociation.fromMap(
      Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorFunctionAssociation(
      eventType: map['eventType'] as String,
      functionArn: map['functionArn'] as String,
    );
  }
}
