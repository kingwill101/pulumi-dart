// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsOrganizationsOrganization
class AwsOrganizationsOrganizationPropertiesResponse {
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureSet: (() { final guardedValue = map['featureSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementAccountArn: (() { final guardedValue = map['managementAccountArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementAccountEmail: (() { final guardedValue = map['managementAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementAccountId: (() { final guardedValue = map['managementAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootId: (() { final guardedValue = map['rootId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

