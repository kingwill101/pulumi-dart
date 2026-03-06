// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings.dart';
import 'domain_default_user_settings.dart';
import 'domain_domain_settings.dart';
import 'domain_retention_policy.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  final pulumi.Input<String>? appNetworkAccessType;
  /// The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  final pulumi.Input<String>? appSecurityGroupManagement;
  /// The Amazon Resource Name (ARN) assigned by AWS to this Domain.
  final pulumi.Input<String>? arn;
  /// The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  final pulumi.Input<String>? authMode;
  /// The default space settings. See `default_space_settings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettings>? defaultSpaceSettings;
  /// The default user settings. See `default_user_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettings>? defaultUserSettings;
  /// The domain name.
  final pulumi.Input<String>? domainName;
  /// The domain settings. See `domain_settings` Block below.
  final pulumi.Input<DomainDomainSettings>? domainSettings;
  /// The ID of the Amazon Elastic File System (EFS) managed by this Domain.
  final pulumi.Input<String>? homeEfsFileSystemId;
  /// The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See `retention_policy` Block below.
  final pulumi.Input<DomainRetentionPolicy>? retentionPolicy;
  /// The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app.
  final pulumi.Input<String>? securityGroupIdForDomainBoundary;
  /// The ARN of the application managed by SageMaker AI in IAM Identity Center. This value is only returned for domains created after September 19, 2023.
  final pulumi.Input<String>? singleSignOnApplicationArn;
  /// The SSO managed application instance ID.
  final pulumi.Input<String>? singleSignOnManagedApplicationInstanceId;
  /// The VPC subnets that Studio uses for communication.
  final pulumi.Input<List<String>>? subnetIds;
  /// Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? tagPropagation;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The domain's URL.
  final pulumi.Input<String>? url;
  /// The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DomainState].
  /// [appNetworkAccessType] Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  /// [appSecurityGroupManagement] The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Domain.
  /// [authMode] The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  /// [defaultSpaceSettings] The default space settings. See `default_space_settings` Block below.
  /// [defaultUserSettings] The default user settings. See `default_user_settings` Block below.
  /// [domainName] The domain name.
  /// [domainSettings] The domain settings. See `domain_settings` Block below.
  /// [homeEfsFileSystemId] The ID of the Amazon Elastic File System (EFS) managed by this Domain.
  /// [kmsKeyId] The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPolicy] The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See `retention_policy` Block below.
  /// [securityGroupIdForDomainBoundary] The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app.
  /// [singleSignOnApplicationArn] The ARN of the application managed by SageMaker AI in IAM Identity Center. This value is only returned for domains created after September 19, 2023.
  /// [singleSignOnManagedApplicationInstanceId] The SSO managed application instance ID.
  /// [subnetIds] The VPC subnets that Studio uses for communication.
  /// [tagPropagation] Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [url] The domain's URL.
  /// [vpcId] The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  const DomainState({
    this.appNetworkAccessType,
    this.appSecurityGroupManagement,
    this.arn,
    this.authMode,
    this.defaultSpaceSettings,
    this.defaultUserSettings,
    this.domainName,
    this.domainSettings,
    this.homeEfsFileSystemId,
    this.kmsKeyId,
    this.region,
    this.retentionPolicy,
    this.securityGroupIdForDomainBoundary,
    this.singleSignOnApplicationArn,
    this.singleSignOnManagedApplicationInstanceId,
    this.subnetIds,
    this.tagPropagation,
    this.tags,
    this.tagsAll,
    this.url,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appNetworkAccessType': ?appNetworkAccessType,
      'appSecurityGroupManagement': ?appSecurityGroupManagement,
      'arn': ?arn,
      'authMode': ?authMode,
      'defaultSpaceSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultSpaceSettings, Map<String, dynamic>>(defaultSpaceSettings, (value) => value.toMap()),
      'defaultUserSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettings, Map<String, dynamic>>(defaultUserSettings, (value) => value.toMap()),
      'domainName': ?domainName,
      'domainSettings': ?pulumi.Input.mapOptionalInputValue<DomainDomainSettings, Map<String, dynamic>>(domainSettings, (value) => value.toMap()),
      'homeEfsFileSystemId': ?homeEfsFileSystemId,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<DomainRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'securityGroupIdForDomainBoundary': ?securityGroupIdForDomainBoundary,
      'singleSignOnApplicationArn': ?singleSignOnApplicationArn,
      'singleSignOnManagedApplicationInstanceId': ?singleSignOnManagedApplicationInstanceId,
      'subnetIds': ?subnetIds,
      'tagPropagation': ?tagPropagation,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
      'vpcId': ?vpcId,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      appNetworkAccessType: (() { final guardedValue = map['appNetworkAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSecurityGroupManagement: (() { final guardedValue = map['appSecurityGroupManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSpaceSettings: (() { final guardedValue = map['defaultSpaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultSpaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultUserSettings: (() { final guardedValue = map['defaultUserSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultUserSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainSettings: (() { final guardedValue = map['domainSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDomainSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      homeEfsFileSystemId: (() { final guardedValue = map['homeEfsFileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityGroupIdForDomainBoundary: (() { final guardedValue = map['securityGroupIdForDomainBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSignOnApplicationArn: (() { final guardedValue = map['singleSignOnApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSignOnManagedApplicationInstanceId: (() { final guardedValue = map['singleSignOnManagedApplicationInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagPropagation: (() { final guardedValue = map['tagPropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

