// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsOrganizationsOrganization
class AwsOrganizationsOrganizationProperties {
  /// The Amazon Resource Name (ARN) of an organization.
  final pulumi.Input<String>? arn;
  /// Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
  final pulumi.Input<String>? featureSet;
  /// The unique identifier (ID) of an organization.
  final pulumi.Input<String>? id;
  /// The Amazon Resource Name (ARN) of the account that is designated as the management account for the organization.
  final pulumi.Input<String>? managementAccountArn;
  /// The email address that is associated with the AWS account that is designated as the management account for the organization.
  final pulumi.Input<String>? managementAccountEmail;
  /// The unique identifier (ID) of the management account of an organization.
  final pulumi.Input<String>? managementAccountId;
  /// The unique identifier (ID) for the root.
  final pulumi.Input<String>? rootId;

  /// Creates a new [AwsOrganizationsOrganizationProperties].
  /// [arn] The Amazon Resource Name (ARN) of an organization.
  /// [featureSet] Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
  /// [id] The unique identifier (ID) of an organization.
  /// [managementAccountArn] The Amazon Resource Name (ARN) of the account that is designated as the management account for the organization.
  /// [managementAccountEmail] The email address that is associated with the AWS account that is designated as the management account for the organization.
  /// [managementAccountId] The unique identifier (ID) of the management account of an organization.
  /// [rootId] The unique identifier (ID) for the root.
  AwsOrganizationsOrganizationProperties({
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

  factory AwsOrganizationsOrganizationProperties.fromMap(Map<String, dynamic> map) {
    return AwsOrganizationsOrganizationProperties(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      featureSet: map['featureSet'] == null ? null : (map['featureSet'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      managementAccountArn: map['managementAccountArn'] == null ? null : (map['managementAccountArn'] as String).input(),
      managementAccountEmail: map['managementAccountEmail'] == null ? null : (map['managementAccountEmail'] as String).input(),
      managementAccountId: map['managementAccountId'] == null ? null : (map['managementAccountId'] as String).input(),
      rootId: map['rootId'] == null ? null : (map['rootId'] as String).input(),
    );
  }
}

