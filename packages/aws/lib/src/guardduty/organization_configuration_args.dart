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
    required String autoEnableOrganizationMembers,
    OrganizationConfigurationDatasources? datasources,
    required String detectorId,
    String? region,
  })  : autoEnableOrganizationMembers =
            pulumi.Input.asInput<String>(autoEnableOrganizationMembers),
        datasources =
            pulumi.Input.asOptionalInput<OrganizationConfigurationDatasources>(
                datasources),
        detectorId = pulumi.Input.asInput<String>(detectorId),
        region = pulumi.Input.asOptionalInput<String>(region);

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

  factory OrganizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs(
      autoEnableOrganizationMembers:
          map['autoEnableOrganizationMembers'] as String,
      datasources: map['datasources'] == null
          ? null
          : OrganizationConfigurationDatasources.fromMap(
              (map['datasources'] as Map).cast<String, dynamic>()),
      detectorId: map['detectorId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
