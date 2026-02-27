// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_default_space_settings/domain_default_space_settings.dart';
import '../domain_default_user_settings/domain_default_user_settings.dart';
import '../domain_domain_settings/domain_domain_settings.dart';
import '../domain_retention_policy/domain_retention_policy.dart';

/// The set of arguments for Domain.
class DomainSagemakerArgs {
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

  DomainSagemakerArgs({
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
    final map = <String, dynamic>{};
    final appNetworkAccessTypeValue = appNetworkAccessType;
    if (appNetworkAccessTypeValue != null) {
      map['appNetworkAccessType'] = appNetworkAccessTypeValue;
    }
    final appSecurityGroupManagementValue = appSecurityGroupManagement;
    if (appSecurityGroupManagementValue != null) {
      map['appSecurityGroupManagement'] = appSecurityGroupManagementValue;
    }
    map['authMode'] = authMode;
    final defaultSpaceSettingsValue = defaultSpaceSettings;
    if (defaultSpaceSettingsValue != null) {
      map['defaultSpaceSettings'] = pulumi.Input.mapOptionalInputValue<
              DomainDefaultSpaceSettings, Map<String, dynamic>>(
          defaultSpaceSettingsValue, (value) => value.toMap());
    }
    map['defaultUserSettings'] = pulumi.Input.mapInputValue<
        DomainDefaultUserSettings,
        Map<String, dynamic>>(defaultUserSettings, (value) => value.toMap());
    map['domainName'] = domainName;
    final domainSettingsValue = domainSettings;
    if (domainSettingsValue != null) {
      map['domainSettings'] = pulumi.Input.mapOptionalInputValue<
          DomainDomainSettings,
          Map<String, dynamic>>(domainSettingsValue, (value) => value.toMap());
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPolicyValue = retentionPolicy;
    if (retentionPolicyValue != null) {
      map['retentionPolicy'] = pulumi.Input.mapOptionalInputValue<
          DomainRetentionPolicy,
          Map<String, dynamic>>(retentionPolicyValue, (value) => value.toMap());
    }
    map['subnetIds'] = subnetIds;
    final tagPropagationValue = tagPropagation;
    if (tagPropagationValue != null) {
      map['tagPropagation'] = tagPropagationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory DomainSagemakerArgs.fromMap(Map<String, dynamic> map) {
    return DomainSagemakerArgs(
      appNetworkAccessType:
          pulumi.Input.asOptionalInput<String>(map['appNetworkAccessType']),
      appSecurityGroupManagement: pulumi.Input.asOptionalInput<String>(
          map['appSecurityGroupManagement']),
      authMode: pulumi.Input.asInput<String>(map['authMode']),
      defaultSpaceSettings:
          pulumi.Input.asOptionalInput<DomainDefaultSpaceSettings>(
              map['defaultSpaceSettings']),
      defaultUserSettings: pulumi.Input.asInput<DomainDefaultUserSettings>(
          map['defaultUserSettings']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      domainSettings: pulumi.Input.asOptionalInput<DomainDomainSettings>(
          map['domainSettings']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retentionPolicy: pulumi.Input.asOptionalInput<DomainRetentionPolicy>(
          map['retentionPolicy']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      tagPropagation:
          pulumi.Input.asOptionalInput<String>(map['tagPropagation']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
