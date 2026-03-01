// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateBucketizedAllocation properties.
class AkriConnectorTemplateBucketizedAllocationResponse {
  /// The bucketized allocation of AEPs for connectors.
  final int bucketSize;
  /// AkriConnectorTemplateAllocationPolicy properties.
  /// Expected value is 'Bucketized'.
  final String policy;

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
      bucketSize: map['bucketSize'] as int,
      policy: map['policy'] as String,
    );
  }
}

