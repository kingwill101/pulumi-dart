// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsOrganizationsOrganization
class AwsOrganizationsOrganizationPropertiesResponse {
  /// The Amazon Resource Name (ARN) of an organization.
  final String? arn;
  /// Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
  final String? featureSet;
  /// The unique identifier (ID) of an organization.
  final String? id;
  /// The Amazon Resource Name (ARN) of the account that is designated as the management account for the organization.
  final String? managementAccountArn;
  /// The email address that is associated with the AWS account that is designated as the management account for the organization.
  final String? managementAccountEmail;
  /// The unique identifier (ID) of the management account of an organization.
  final String? managementAccountId;
  /// The unique identifier (ID) for the root.
  final String? rootId;

  /// Creates a new [AwsOrganizationsOrganizationPropertiesResponse].
  /// [arn] The Amazon Resource Name (ARN) of an organization.
  /// [featureSet] Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
  /// [id] The unique identifier (ID) of an organization.
  /// [managementAccountArn] The Amazon Resource Name (ARN) of the account that is designated as the management account for the organization.
  /// [managementAccountEmail] The email address that is associated with the AWS account that is designated as the management account for the organization.
  /// [managementAccountId] The unique identifier (ID) of the management account of an organization.
  /// [rootId] The unique identifier (ID) for the root.
  AwsOrganizationsOrganizationPropertiesResponse({
    this.arn,
    this.featureSet,
    this.id,
    this.managementAccountArn,
    this.managementAccountEmail,
    this.managementAccountId,
    this.rootId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'featureSet': ?featureSet,
      'id': ?id,
      'managementAccountArn': ?managementAccountArn,
      'managementAccountEmail': ?managementAccountEmail,
      'managementAccountId': ?managementAccountId,
      'rootId': ?rootId,
    };
  }

  factory AwsOrganizationsOrganizationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsOrganizationsOrganizationPropertiesResponse(
      arn: map['arn'] == null ? null : map['arn'] as String,
      featureSet: map['featureSet'] == null ? null : map['featureSet'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      managementAccountArn: map['managementAccountArn'] == null ? null : map['managementAccountArn'] as String,
      managementAccountEmail: map['managementAccountEmail'] == null ? null : map['managementAccountEmail'] as String,
      managementAccountId: map['managementAccountId'] == null ? null : map['managementAccountId'] as String,
      rootId: map['rootId'] == null ? null : map['rootId'] as String,
    );
  }
}

