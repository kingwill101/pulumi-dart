// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_datasources.dart';

/// Input properties used for looking up and filtering OrganizationConfiguration resources.
class OrganizationConfigurationState {
  /// Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// Valid values are `ALL`, `NEW`, `NONE`.
  final pulumi.Input<String?>? autoEnableOrganizationMembers;
  /// Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.OrganizationConfigurationFeature` resources.
  ///
  /// &gt; **NOTE:** One of `autoEnable` or `autoEnableOrganizationMembers` must be specified.
  final pulumi.Input<OrganizationConfigurationDatasources?>? datasources;
  /// The detector ID of the GuardDuty account.
  final pulumi.Input<String?>? detectorId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [OrganizationConfigurationState].
  /// [autoEnableOrganizationMembers] Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// [datasources] Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.OrganizationConfigurationFeature` resources.
  /// [detectorId] The detector ID of the GuardDuty account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const OrganizationConfigurationState({
    this.autoEnableOrganizationMembers,
    this.datasources,
    this.detectorId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnableOrganizationMembers': ?autoEnableOrganizationMembers,
      'datasources': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationDatasources, Map<String, dynamic>>(datasources, (value) => value.toMap()),
      'detectorId': ?detectorId,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationState.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationState(
      autoEnableOrganizationMembers: (() { final guardedValue = map['autoEnableOrganizationMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasources: (() { final guardedValue = map['datasources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationConfigurationDatasources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      detectorId: (() { final guardedValue = map['detectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
