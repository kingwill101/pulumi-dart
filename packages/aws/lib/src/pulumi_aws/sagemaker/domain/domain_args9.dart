// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_default_space_settings/domain_default_space_settings.dart';
import '../domain_default_user_settings/domain_default_user_settings.dart';
import '../domain_domain_settings/domain_domain_settings.dart';
import '../domain_retention_policy/domain_retention_policy.dart';

/// The set of arguments for Domain.
class DomainArgs9 {
  /// Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  final Input<String>? appNetworkAccessType;

  /// The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  final Input<String>? appSecurityGroupManagement;

  /// The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  final Input<String> authMode;

  /// The default space settings. See <span pulumi-lang-nodejs="`defaultSpaceSettings`" pulumi-lang-dotnet="`DefaultSpaceSettings`" pulumi-lang-go="`defaultSpaceSettings`" pulumi-lang-python="`default_space_settings`" pulumi-lang-yaml="`defaultSpaceSettings`" pulumi-lang-java="`defaultSpaceSettings`">`default_space_settings`</span> Block below.
  final Input<DomainDefaultSpaceSettings>? defaultSpaceSettings;

  /// The default user settings. See <span pulumi-lang-nodejs="`defaultUserSettings`" pulumi-lang-dotnet="`DefaultUserSettings`" pulumi-lang-go="`defaultUserSettings`" pulumi-lang-python="`default_user_settings`" pulumi-lang-yaml="`defaultUserSettings`" pulumi-lang-java="`defaultUserSettings`">`default_user_settings`</span> Block below.
  final Input<DomainDefaultUserSettings> defaultUserSettings;

  /// The domain name.
  final Input<String> domainName;

  /// The domain settings. See <span pulumi-lang-nodejs="`domainSettings`" pulumi-lang-dotnet="`DomainSettings`" pulumi-lang-go="`domainSettings`" pulumi-lang-python="`domain_settings`" pulumi-lang-yaml="`domainSettings`" pulumi-lang-java="`domainSettings`">`domain_settings`</span> Block below.
  final Input<DomainDomainSettings>? domainSettings;

  /// The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  final Input<String>? kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See <span pulumi-lang-nodejs="`retentionPolicy`" pulumi-lang-dotnet="`RetentionPolicy`" pulumi-lang-go="`retentionPolicy`" pulumi-lang-python="`retention_policy`" pulumi-lang-yaml="`retentionPolicy`" pulumi-lang-java="`retentionPolicy`">`retention_policy`</span> Block below.
  final Input<DomainRetentionPolicy>? retentionPolicy;

  /// The VPC subnets that Studio uses for communication.
  final Input<List<String>> subnetIds;

  /// Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  final Input<String>? tagPropagation;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  ///
  /// The following arguments are optional:
  final Input<String> vpcId;

  DomainArgs9({
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
      map['defaultSpaceSettings'] = Input.mapOptionalInputValue<
              DomainDefaultSpaceSettings, Map<String, dynamic>>(
          defaultSpaceSettingsValue, (value) => value.toMap());
    }
    map['defaultUserSettings'] =
        Input.mapInputValue<DomainDefaultUserSettings, Map<String, dynamic>>(
            defaultUserSettings, (value) => value.toMap());
    map['domainName'] = domainName;
    final domainSettingsValue = domainSettings;
    if (domainSettingsValue != null) {
      map['domainSettings'] = Input.mapOptionalInputValue<DomainDomainSettings,
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
      map['retentionPolicy'] = Input.mapOptionalInputValue<
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

  factory DomainArgs9.fromMap(Map<String, dynamic> map) {
    return DomainArgs9(
      appNetworkAccessType:
          Input.asOptionalInput<String>(map['appNetworkAccessType']),
      appSecurityGroupManagement:
          Input.asOptionalInput<String>(map['appSecurityGroupManagement']),
      authMode: Input.asInput<String>(map['authMode']),
      defaultSpaceSettings: Input.asOptionalInput<DomainDefaultSpaceSettings>(
          map['defaultSpaceSettings']),
      defaultUserSettings:
          Input.asInput<DomainDefaultUserSettings>(map['defaultUserSettings']),
      domainName: Input.asInput<String>(map['domainName']),
      domainSettings:
          Input.asOptionalInput<DomainDomainSettings>(map['domainSettings']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionPolicy:
          Input.asOptionalInput<DomainRetentionPolicy>(map['retentionPolicy']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tagPropagation: Input.asOptionalInput<String>(map['tagPropagation']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
