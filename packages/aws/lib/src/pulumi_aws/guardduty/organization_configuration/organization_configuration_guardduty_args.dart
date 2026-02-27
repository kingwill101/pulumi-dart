// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_configuration_datasources/organization_configuration_datasources.dart';

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationGuarddutyArgs {
  /// Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// Valid values are `ALL`, `NEW`, `NONE`.
  final pulumi.Input<String> autoEnableOrganizationMembers;

  /// Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.OrganizationConfigurationFeature` resources.
  ///
  /// > **NOTE:** One of `auto_enable` or `auto_enable_organization_members` must be specified.
  final pulumi.Input<OrganizationConfigurationDatasources>? datasources;

  /// The detector ID of the GuardDuty account.
  final pulumi.Input<String> detectorId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationConfigurationGuarddutyArgs({
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
      map['datasources'] = pulumi.Input.mapOptionalInputValue<
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

  factory OrganizationConfigurationGuarddutyArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationGuarddutyArgs(
      autoEnableOrganizationMembers:
          pulumi.Input.asInput<String>(map['autoEnableOrganizationMembers']),
      datasources:
          pulumi.Input.asOptionalInput<OrganizationConfigurationDatasources>(
              map['datasources']),
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
