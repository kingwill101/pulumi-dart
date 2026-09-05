// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceAccount.
class GetServiceAccountResult {
  /// ARN of the AWS CloudTrail service account in the selected Region.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetServiceAccountResult].
  /// [arn] ARN of the AWS CloudTrail service account in the selected Region.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetServiceAccountResult({
    this.arn,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
