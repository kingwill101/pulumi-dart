// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIamRoleAssociation.
class GetIamRoleAssociationResult {
  /// Amazon Web Services integration configuration settings for the Amazon Web Services Identity and Access Management (IAM) service role.
  final String awsIntegration;
  final String iamRoleArn;
  final String region;
  final String resourceArn;
  /// Current status of the Amazon Web Services Identity and Access Management (IAM) service role.
  final String status;
  /// Additional information about the current status of the Amazon Web Services Identity and Access Management (IAM) service role, if applicable.
  final String statusReason;

  /// Creates a new [GetIamRoleAssociationResult].
  /// [awsIntegration] Amazon Web Services integration configuration settings for the Amazon Web Services Identity and Access Management (IAM) service role.
  /// [iamRoleArn] Required.
  /// [region] Required.
  /// [resourceArn] Required.
  /// [status] Current status of the Amazon Web Services Identity and Access Management (IAM) service role.
  /// [statusReason] Additional information about the current status of the Amazon Web Services Identity and Access Management (IAM) service role, if applicable.
  const GetIamRoleAssociationResult({
    required this.awsIntegration,
    required this.iamRoleArn,
    required this.region,
    required this.resourceArn,
    required this.status,
    required this.statusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIntegration': awsIntegration,
      'iamRoleArn': iamRoleArn,
      'region': region,
      'resourceArn': resourceArn,
      'status': status,
      'statusReason': statusReason,
    };
  }

  factory GetIamRoleAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetIamRoleAssociationResult(
      awsIntegration: map['awsIntegration'] as String,
      iamRoleArn: map['iamRoleArn'] as String,
      region: map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
    );
  }
}
