// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateBucketizedAllocation properties.
class AkriConnectorTemplateBucketizedAllocation {
  /// The bucketized allocation of AEPs for connectors.
  final int bucketSize;
  /// AkriConnectorTemplateAllocationPolicy properties.
  /// Expected value is 'Bucketized'.
  final String policy;

  /// Creates a new [AkriConnectorTemplateBucketizedAllocation].
  /// [bucketSize] The bucketized allocation of AEPs for connectors.
  /// [policy] AkriConnectorTemplateAllocationPolicy properties.
  AkriConnectorTemplateBucketizedAllocation({
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
      bucketSize: map['bucketSize'] as int,
      policy: map['policy'] as String,
    );
  }
}

