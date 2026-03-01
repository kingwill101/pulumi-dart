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
    pulumi.Output<String>? appNetworkAccessType,
    pulumi.Output<String>? appSecurityGroupManagement,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authMode,
    pulumi.Output<DomainDefaultSpaceSettings>? defaultSpaceSettings,
    pulumi.Output<DomainDefaultUserSettings>? defaultUserSettings,
    pulumi.Output<String>? domainName,
    pulumi.Output<DomainDomainSettings>? domainSettings,
    pulumi.Output<String>? homeEfsFileSystemId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<DomainRetentionPolicy>? retentionPolicy,
    pulumi.Output<String>? securityGroupIdForDomainBoundary,
    pulumi.Output<String>? singleSignOnApplicationArn,
    pulumi.Output<String>? singleSignOnManagedApplicationInstanceId,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<String>? tagPropagation,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
    pulumi.Output<String>? vpcId,
  }) :
      appNetworkAccessType = pulumi.Input.asOptionalInput<String>(appNetworkAccessType),
      appSecurityGroupManagement = pulumi.Input.asOptionalInput<String>(appSecurityGroupManagement),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authMode = pulumi.Input.asOptionalInput<String>(authMode),
      defaultSpaceSettings = pulumi.Input.asOptionalInput<DomainDefaultSpaceSettings>(defaultSpaceSettings),
      defaultUserSettings = pulumi.Input.asOptionalInput<DomainDefaultUserSettings>(defaultUserSettings),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainSettings = pulumi.Input.asOptionalInput<DomainDomainSettings>(domainSettings),
      homeEfsFileSystemId = pulumi.Input.asOptionalInput<String>(homeEfsFileSystemId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionPolicy = pulumi.Input.asOptionalInput<DomainRetentionPolicy>(retentionPolicy),
      securityGroupIdForDomainBoundary = pulumi.Input.asOptionalInput<String>(securityGroupIdForDomainBoundary),
      singleSignOnApplicationArn = pulumi.Input.asOptionalInput<String>(singleSignOnApplicationArn),
      singleSignOnManagedApplicationInstanceId = pulumi.Input.asOptionalInput<String>(singleSignOnManagedApplicationInstanceId),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tagPropagation = pulumi.Input.asOptionalInput<String>(tagPropagation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      appNetworkAccessType: map['appNetworkAccessType'] == null ? null : pulumi.Output.create<String>(map['appNetworkAccessType'] as String),
      appSecurityGroupManagement: map['appSecurityGroupManagement'] == null ? null : pulumi.Output.create<String>(map['appSecurityGroupManagement'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authMode: map['authMode'] == null ? null : pulumi.Output.create<String>(map['authMode'] as String),
      defaultSpaceSettings: map['defaultSpaceSettings'] == null ? null : pulumi.Output.create<DomainDefaultSpaceSettings>(DomainDefaultSpaceSettings.fromMap((map['defaultSpaceSettings'] as Map).cast<String, dynamic>())),
      defaultUserSettings: map['defaultUserSettings'] == null ? null : pulumi.Output.create<DomainDefaultUserSettings>(DomainDefaultUserSettings.fromMap((map['defaultUserSettings'] as Map).cast<String, dynamic>())),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainSettings: map['domainSettings'] == null ? null : pulumi.Output.create<DomainDomainSettings>(DomainDomainSettings.fromMap((map['domainSettings'] as Map).cast<String, dynamic>())),
      homeEfsFileSystemId: map['homeEfsFileSystemId'] == null ? null : pulumi.Output.create<String>(map['homeEfsFileSystemId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionPolicy: map['retentionPolicy'] == null ? null : pulumi.Output.create<DomainRetentionPolicy>(DomainRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())),
      securityGroupIdForDomainBoundary: map['securityGroupIdForDomainBoundary'] == null ? null : pulumi.Output.create<String>(map['securityGroupIdForDomainBoundary'] as String),
      singleSignOnApplicationArn: map['singleSignOnApplicationArn'] == null ? null : pulumi.Output.create<String>(map['singleSignOnApplicationArn'] as String),
      singleSignOnManagedApplicationInstanceId: map['singleSignOnManagedApplicationInstanceId'] == null ? null : pulumi.Output.create<String>(map['singleSignOnManagedApplicationInstanceId'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tagPropagation: map['tagPropagation'] == null ? null : pulumi.Output.create<String>(map['tagPropagation'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

