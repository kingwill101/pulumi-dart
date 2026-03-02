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
  DomainState({
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
      appNetworkAccessType: map['appNetworkAccessType'] == null ? null : ((map['appNetworkAccessType'] as String).input()).input(),
      appSecurityGroupManagement: map['appSecurityGroupManagement'] == null ? null : ((map['appSecurityGroupManagement'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      authMode: map['authMode'] == null ? null : ((map['authMode'] as String).input()).input(),
      defaultSpaceSettings: map['defaultSpaceSettings'] == null ? null : ((DomainDefaultSpaceSettings.fromMap((map['defaultSpaceSettings']! as Map).cast<String, dynamic>())).input()).input(),
      defaultUserSettings: map['defaultUserSettings'] == null ? null : ((DomainDefaultUserSettings.fromMap((map['defaultUserSettings']! as Map).cast<String, dynamic>())).input()).input(),
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      domainSettings: map['domainSettings'] == null ? null : ((DomainDomainSettings.fromMap((map['domainSettings']! as Map).cast<String, dynamic>())).input()).input(),
      homeEfsFileSystemId: map['homeEfsFileSystemId'] == null ? null : ((map['homeEfsFileSystemId'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : ((DomainRetentionPolicy.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      securityGroupIdForDomainBoundary: map['securityGroupIdForDomainBoundary'] == null ? null : ((map['securityGroupIdForDomainBoundary'] as String).input()).input(),
      singleSignOnApplicationArn: map['singleSignOnApplicationArn'] == null ? null : ((map['singleSignOnApplicationArn'] as String).input()).input(),
      singleSignOnManagedApplicationInstanceId: map['singleSignOnManagedApplicationInstanceId'] == null ? null : ((map['singleSignOnManagedApplicationInstanceId'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tagPropagation: map['tagPropagation'] == null ? null : ((map['tagPropagation'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      url: map['url'] == null ? null : ((map['url'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

