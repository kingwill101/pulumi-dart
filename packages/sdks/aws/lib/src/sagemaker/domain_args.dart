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
    this.appNetworkAccessType,
    this.appSecurityGroupManagement,
    required this.authMode,
    this.defaultSpaceSettings,
    required this.defaultUserSettings,
    required this.domainName,
    this.domainSettings,
    this.kmsKeyId,
    this.region,
    this.retentionPolicy,
    required this.subnetIds,
    this.tagPropagation,
    this.tags,
    required this.vpcId,
  });

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
      appNetworkAccessType: map['appNetworkAccessType'] == null ? null : (map['appNetworkAccessType'] as String).input(),
      appSecurityGroupManagement: map['appSecurityGroupManagement'] == null ? null : (map['appSecurityGroupManagement'] as String).input(),
      authMode: (map['authMode'] as String).input(),
      defaultSpaceSettings: map['defaultSpaceSettings'] == null ? null : (DomainDefaultSpaceSettings.fromMap((map['defaultSpaceSettings'] as Map).cast<String, dynamic>())).input(),
      defaultUserSettings: (DomainDefaultUserSettings.fromMap((map['defaultUserSettings'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      domainSettings: map['domainSettings'] == null ? null : (DomainDomainSettings.fromMap((map['domainSettings'] as Map).cast<String, dynamic>())).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (DomainRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      tagPropagation: map['tagPropagation'] == null ? null : (map['tagPropagation'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

