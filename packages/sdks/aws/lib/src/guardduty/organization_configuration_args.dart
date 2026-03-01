// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_datasources.dart';

/// {@template pulumi_guardduty_organization_configuration_organization_configuration_args_doc}
/// The set of arguments for OrganizationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_guardduty_organization_configuration_organization_configuration_args_doc}
class OrganizationConfigurationArgs {
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

  /// Creates a new [OrganizationConfigurationArgs].
  /// [autoEnableOrganizationMembers] Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// [datasources] Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.OrganizationConfigurationFeature` resources.
  /// [detectorId] The detector ID of the GuardDuty account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationArgs({
    required pulumi.Output<String> autoEnableOrganizationMembers,
    pulumi.Output<OrganizationConfigurationDatasources>? datasources,
    required pulumi.Output<String> detectorId,
    pulumi.Output<String>? region,
  }) :
      autoEnableOrganizationMembers = pulumi.Input.asInput<String>(autoEnableOrganizationMembers),
      datasources = pulumi.Input.asOptionalInput<OrganizationConfigurationDatasources>(datasources),
      detectorId = pulumi.Input.asInput<String>(detectorId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnableOrganizationMembers': autoEnableOrganizationMembers,
      'datasources': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationDatasources, Map<String, dynamic>>(datasources, (value) => value.toMap()),
      'detectorId': detectorId,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs(
      autoEnableOrganizationMembers: pulumi.Output.create<String>(map['autoEnableOrganizationMembers'] as String),
      datasources: map['datasources'] == null ? null : pulumi.Output.create<OrganizationConfigurationDatasources>(OrganizationConfigurationDatasources.fromMap((map['datasources'] as Map).cast<String, dynamic>())),
      detectorId: pulumi.Output.create<String>(map['detectorId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

