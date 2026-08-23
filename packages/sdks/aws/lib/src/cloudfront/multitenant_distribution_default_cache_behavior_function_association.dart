// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionDefaultCacheBehaviorFunctionAssociation {
  /// Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  final pulumi.Input<String> eventType;
  /// ARN of the CloudFront function.
  final pulumi.Input<String> functionArn;

  /// Creates a new [MultitenantDistributionDefaultCacheBehaviorFunctionAssociation].
  /// [eventType] Specific event to trigger this function. Valid values: `viewer-request`, `origin-request`, `viewer-response`, `origin-response`.
  /// [functionArn] ARN of the CloudFront function.
  const MultitenantDistributionDefaultCacheBehaviorFunctionAssociation({
    required this.eventType,
    required this.functionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
      'functionArn': functionArn,
    };
  }

  factory MultitenantDistributionDefaultCacheBehaviorFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehaviorFunctionAssociation(
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
    );
  }
}
