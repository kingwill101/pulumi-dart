// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionDefaultCacheBehaviorFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request` or `viewer-response`.
  final pulumi.Input<String> eventType;
  /// ARN of the CloudFront function.
  final pulumi.Input<String> functionArn;

  /// Creates a new [DistributionDefaultCacheBehaviorFunctionAssociation].
  /// [eventType] Specific event to trigger this function. Valid values: `viewer-request` or `viewer-response`.
  /// [functionArn] ARN of the CloudFront function.
  DistributionDefaultCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'functionArn': functionArn,
    };
  }

  factory DistributionDefaultCacheBehaviorFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorFunctionAssociation(
      eventType: (map['eventType'] as String).input(),
      functionArn: (map['functionArn'] as String).input(),
    );
  }
}

