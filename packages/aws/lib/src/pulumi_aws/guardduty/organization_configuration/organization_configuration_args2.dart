// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_configuration_datasources/organization_configuration_datasources.dart';

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationArgs2 {
  /// Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// Valid values are `ALL`, `NEW`, `NONE`.
  final Input<String> autoEnableOrganizationMembers;

  /// Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of <span pulumi-lang-nodejs="`aws.guardduty.OrganizationConfigurationFeature`" pulumi-lang-dotnet="`aws.guardduty.OrganizationConfigurationFeature`" pulumi-lang-go="`guardduty.OrganizationConfigurationFeature`" pulumi-lang-python="`guardduty.OrganizationConfigurationFeature`" pulumi-lang-yaml="`aws.guardduty.OrganizationConfigurationFeature`" pulumi-lang-java="`aws.guardduty.OrganizationConfigurationFeature`">`aws.guardduty.OrganizationConfigurationFeature`</span> resources.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`autoEnable`" pulumi-lang-dotnet="`AutoEnable`" pulumi-lang-go="`autoEnable`" pulumi-lang-python="`auto_enable`" pulumi-lang-yaml="`autoEnable`" pulumi-lang-java="`autoEnable`">`auto_enable`</span> or <span pulumi-lang-nodejs="`autoEnableOrganizationMembers`" pulumi-lang-dotnet="`AutoEnableOrganizationMembers`" pulumi-lang-go="`autoEnableOrganizationMembers`" pulumi-lang-python="`auto_enable_organization_members`" pulumi-lang-yaml="`autoEnableOrganizationMembers`" pulumi-lang-java="`autoEnableOrganizationMembers`">`auto_enable_organization_members`</span> must be specified.
  final Input<OrganizationConfigurationDatasources>? datasources;

  /// The detector ID of the GuardDuty account.
  final Input<String> detectorId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationConfigurationArgs2({
    required this.autoEnableOrganizationMembers,
    this.datasources,
    required this.detectorId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnableOrganizationMembers'] = autoEnableOrganizationMembers;
    final datasourcesValue = datasources;
    if (datasourcesValue != null) {
      map['datasources'] = Input.mapOptionalInputValue<
          OrganizationConfigurationDatasources,
          Map<String, dynamic>>(datasourcesValue, (value) => value.toMap());
    }
    map['detectorId'] = detectorId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationArgs2.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs2(
      autoEnableOrganizationMembers:
          Input.asInput<String>(map['autoEnableOrganizationMembers']),
      datasources: Input.asOptionalInput<OrganizationConfigurationDatasources>(
          map['datasources']),
      detectorId: Input.asInput<String>(map['detectorId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
