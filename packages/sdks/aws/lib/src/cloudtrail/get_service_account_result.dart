// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServiceAccount.
class GetServiceAccountResult {
  /// ARN of the AWS CloudTrail service account in the selected Region.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetServiceAccountResult].
  /// [arn] ARN of the AWS CloudTrail service account in the selected Region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetServiceAccountResult({
    required this.arn,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'id': id, 'region': region};
  }

  factory GetServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
