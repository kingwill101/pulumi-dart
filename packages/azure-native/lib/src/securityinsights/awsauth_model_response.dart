// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with AWS.
class AWSAuthModelResponse {
  /// AWS STS assume role external ID. This is used to prevent the confused deputy problem: 'https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html'
  final String? externalId;
  /// AWS STS assume role ARN
  final String roleArn;
  /// Type of paging
  /// Expected value is 'AWS'.
  final String type;

  /// Creates a new [AWSAuthModelResponse].
  /// [externalId] AWS STS assume role external ID. This is used to prevent the confused deputy problem: 'https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html'
  /// [roleArn] AWS STS assume role ARN
  /// [type] Type of paging
  AWSAuthModelResponse({
    this.externalId,
    required this.roleArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': ?externalId,
      'roleArn': roleArn,
      'type': type,
    };
  }

  factory AWSAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return AWSAuthModelResponse(
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      roleArn: map['roleArn'] as String,
      type: map['type'] as String,
    );
  }
}

