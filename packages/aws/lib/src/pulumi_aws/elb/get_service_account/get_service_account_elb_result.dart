// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServiceAccount.
class GetServiceAccountElbResult {
  /// ARN of the AWS ELB service account in the selected Region.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetServiceAccountElbResult({
    required this.arn,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetServiceAccountElbResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountElbResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
