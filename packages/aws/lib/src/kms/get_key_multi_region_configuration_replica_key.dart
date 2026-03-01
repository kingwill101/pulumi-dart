// ignore_for_file: unused_element, unnecessary_cast

class GetKeyMultiRegionConfigurationReplicaKey {
  /// The key ARN of a primary or replica key of a multi-Region key.
  final String arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Creates a new [GetKeyMultiRegionConfigurationReplicaKey].
  /// [arn] The key ARN of a primary or replica key of a multi-Region key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetKeyMultiRegionConfigurationReplicaKey({
    required this.arn,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': region};
  }

  factory GetKeyMultiRegionConfigurationReplicaKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKeyMultiRegionConfigurationReplicaKey(
      arn: map['arn'] as String,
      region: map['region'] as String,
    );
  }
}
