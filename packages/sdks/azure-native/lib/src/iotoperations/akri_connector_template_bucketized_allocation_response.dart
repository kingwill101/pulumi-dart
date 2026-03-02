// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateBucketizedAllocation properties.
class AkriConnectorTemplateBucketizedAllocationResponse {
  /// The bucketized allocation of AEPs for connectors.
  final pulumi.Input<int> bucketSize;
  /// AkriConnectorTemplateAllocationPolicy properties.
  /// Expected value is 'Bucketized'.
  final pulumi.Input<String> policy;

  /// Creates a new [AkriConnectorTemplateBucketizedAllocationResponse].
  /// [bucketSize] The bucketized allocation of AEPs for connectors.
  /// [policy] AkriConnectorTemplateAllocationPolicy properties.
  AkriConnectorTemplateBucketizedAllocationResponse({
    required this.bucketSize,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'policy': policy,
    };
  }

  factory AkriConnectorTemplateBucketizedAllocationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateBucketizedAllocationResponse(
      bucketSize: (map['bucketSize'] as int).input(),
      policy: (map['policy'] as String).input(),
    );
  }
}

