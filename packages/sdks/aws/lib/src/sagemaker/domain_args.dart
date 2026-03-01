// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings.dart';
import 'domain_default_user_settings.dart';
import 'domain_domain_settings.dart';
import 'domain_retention_policy.dart';

/// {@template pulumi_sagemaker_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_domain_domain_args_doc}
class DomainArgs {
  /// Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  final pulumi.Input<String>? appNetworkAccessType;
  /// The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  final pulumi.Input<String>? appSecurityGroupManagement;
  /// The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  final pulumi.Input<String> authMode;
  /// The default space settings. See `default_space_settings` Block below.
  final pulumi.Input<DomainDefaultSpaceSettings>? defaultSpaceSettings;
  /// The default user settings. See `default_user_settings` Block below.
  final pulumi.Input<DomainDefaultUserSettings> defaultUserSettings;
  /// The domain name.
  final pulumi.Input<String> domainName;
  /// The domain settings. See `domain_settings` Block below.
  final pulumi.Input<DomainDomainSettings>? domainSettings;
  /// The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See `retention_policy` Block below.
  final pulumi.Input<DomainRetentionPolicy>? retentionPolicy;
  /// The VPC subnets that Studio uses for communication.
  final pulumi.Input<List<String>> subnetIds;
  /// Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? tagPropagation;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  /// Creates a new [DomainArgs].
  /// [appNetworkAccessType] Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  /// [appSecurityGroupManagement] The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  /// [authMode] The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  /// [defaultSpaceSettings] The default space settings. See `default_space_settings` Block below.
  /// [defaultUserSettings] The default user settings. See `default_user_settings` Block below.
  /// [domainName] The domain name.
  /// [domainSettings] The domain settings. See `domain_settings` Block below.
  /// [kmsKeyId] The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPolicy] The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See `retention_policy` Block below.
  /// [subnetIds] The VPC subnets that Studio uses for communication.
  /// [tagPropagation] Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  DomainArgs({
    pulumi.Output<String>? appNetworkAccessType,
    pulumi.Output<String>? appSecurityGroupManagement,
    required pulumi.Output<String> authMode,
    pulumi.Output<DomainDefaultSpaceSettings>? defaultSpaceSettings,
    required pulumi.Output<DomainDefaultUserSettings> defaultUserSettings,
    required pulumi.Output<String> domainName,
    pulumi.Output<DomainDomainSettings>? domainSettings,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<DomainRetentionPolicy>? retentionPolicy,
    required pulumi.Output<List<String>> subnetIds,
    pulumi.Output<String>? tagPropagation,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      appNetworkAccessType = pulumi.Input.asOptionalInput<String>(appNetworkAccessType),
      appSecurityGroupManagement = pulumi.Input.asOptionalInput<String>(appSecurityGroupManagement),
      authMode = pulumi.Input.asInput<String>(authMode),
      defaultSpaceSettings = pulumi.Input.asOptionalInput<DomainDefaultSpaceSettings>(defaultSpaceSettings),
      defaultUserSettings = pulumi.Input.asInput<DomainDefaultUserSettings>(defaultUserSettings),
      domainName = pulumi.Input.asInput<String>(domainName),
      domainSettings = pulumi.Input.asOptionalInput<DomainDomainSettings>(domainSettings),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionPolicy = pulumi.Input.asOptionalInput<DomainRetentionPolicy>(retentionPolicy),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tagPropagation = pulumi.Input.asOptionalInput<String>(tagPropagation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appNetworkAccessType': ?appNetworkAccessType,
      'appSecurityGroupManagement': ?appSecurityGroupManagement,
      'authMode': authMode,
      'defaultSpaceSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultSpaceSettings, Map<String, dynamic>>(defaultSpaceSettings, (value) => value.toMap()),
      'defaultUserSettings': pulumi.Input.mapInputValue<DomainDefaultUserSettings, Map<String, dynamic>>(defaultUserSettings, (value) => value.toMap()),
      'domainName': domainName,
      'domainSettings': ?pulumi.Input.mapOptionalInputValue<DomainDomainSettings, Map<String, dynamic>>(domainSettings, (value) => value.toMap()),
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<DomainRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'subnetIds': subnetIds,
      'tagPropagation': ?tagPropagation,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      appNetworkAccessType: map['appNetworkAccessType'] == null ? null : pulumi.Output.create<String>(map['appNetworkAccessType'] as String),
      appSecurityGroupManagement: map['appSecurityGroupManagement'] == null ? null : pulumi.Output.create<String>(map['appSecurityGroupManagement'] as String),
      authMode: pulumi.Output.create<String>(map['authMode'] as String),
      defaultSpaceSettings: map['defaultSpaceSettings'] == null ? null : pulumi.Output.create<DomainDefaultSpaceSettings>(DomainDefaultSpaceSettings.fromMap((map['defaultSpaceSettings'] as Map).cast<String, dynamic>())),
      defaultUserSettings: pulumi.Output.create<DomainDefaultUserSettings>(DomainDefaultUserSettings.fromMap((map['defaultUserSettings'] as Map).cast<String, dynamic>())),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      domainSettings: map['domainSettings'] == null ? null : pulumi.Output.create<DomainDomainSettings>(DomainDomainSettings.fromMap((map['domainSettings'] as Map).cast<String, dynamic>())),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionPolicy: map['retentionPolicy'] == null ? null : pulumi.Output.create<DomainRetentionPolicy>(DomainRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())),
      subnetIds: pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tagPropagation: map['tagPropagation'] == null ? null : pulumi.Output.create<String>(map['tagPropagation'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

