// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateBucketizedAllocation properties.
class AkriConnectorTemplateBucketizedAllocation {
  /// The bucketized allocation of AEPs for connectors.
  final pulumi.Input<int> bucketSize;
  /// AkriConnectorTemplateAllocationPolicy properties.
  /// Expected value is 'Bucketized'.
  final pulumi.Input<String> policy;

  /// Creates a new [AkriConnectorTemplateBucketizedAllocation].
  /// [bucketSize] The bucketized allocation of AEPs for connectors.
  /// [policy] AkriConnectorTemplateAllocationPolicy properties.
  const AkriConnectorTemplateBucketizedAllocation({
    required this.bucketSize,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'policy': policy,
    };
  }

  factory AkriConnectorTemplateBucketizedAllocation.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateBucketizedAllocation(
      bucketSize: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['bucketSize'])),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
