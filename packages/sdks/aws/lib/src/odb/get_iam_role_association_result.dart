// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIamRoleAssociation.
class GetIamRoleAssociationResult {
  /// Amazon Web Services integration configuration settings for the Amazon Web Services Identity and Access Management (IAM) service role.
  final String? awsIntegration;
  final String? iamRoleArn;
  final String? region;
  final String? resourceArn;
  /// Current status of the Amazon Web Services Identity and Access Management (IAM) service role.
  final String? status;
  /// Additional information about the current status of the Amazon Web Services Identity and Access Management (IAM) service role, if applicable.
  final String? statusReason;

  /// Creates a new [GetIamRoleAssociationResult].
  /// [awsIntegration] Amazon Web Services integration configuration settings for the Amazon Web Services Identity and Access Management (IAM) service role.
  /// [iamRoleArn] Optional.
  /// [region] Optional.
  /// [resourceArn] Optional.
  /// [status] Current status of the Amazon Web Services Identity and Access Management (IAM) service role.
  /// [statusReason] Additional information about the current status of the Amazon Web Services Identity and Access Management (IAM) service role, if applicable.
  const GetIamRoleAssociationResult({
    this.awsIntegration,
    this.iamRoleArn,
    this.region,
    this.resourceArn,
    this.status,
    this.statusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIntegration': ?awsIntegration,
      'iamRoleArn': ?iamRoleArn,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'status': ?status,
      'statusReason': ?statusReason,
    };
  }

  factory GetIamRoleAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetIamRoleAssociationResult(
      awsIntegration: (() { final guardedValue = map['awsIntegration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
