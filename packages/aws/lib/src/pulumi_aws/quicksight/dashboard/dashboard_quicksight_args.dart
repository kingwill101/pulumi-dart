// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dashboard_dashboard_publish_options/dashboard_dashboard_publish_options.dart';
import '../dashboard_parameters/dashboard_parameters.dart';
import '../dashboard_permission/dashboard_permission.dart';
import '../dashboard_source_entity/dashboard_source_entity.dart';

/// The set of arguments for Dashboard.
class DashboardQuicksightArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Identifier for the dashboard.
  final pulumi.Input<String> dashboardId;

  /// Options for publishing the dashboard. See dashboard_publish_options.
  final pulumi.Input<DashboardDashboardPublishOptions>? dashboardPublishOptions;

  /// Display name for the dashboard.
  final pulumi.Input<String>? name;

  /// The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  final pulumi.Input<DashboardParameters>? parameters;

  /// A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  final pulumi.Input<List<DashboardPermission>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  final pulumi.Input<DashboardSourceEntity>? sourceEntity;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  final pulumi.Input<String>? themeArn;

  /// A description of the current dashboard version being created/updated.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> versionDescription;

  DashboardQuicksightArgs({
    this.awsAccountId,
    required this.dashboardId,
    this.dashboardPublishOptions,
    this.name,
    this.parameters,
    this.permissions,
    this.region,
    this.sourceEntity,
    this.tags,
    this.themeArn,
    required this.versionDescription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['dashboardId'] = dashboardId;
    final dashboardPublishOptionsValue = dashboardPublishOptions;
    if (dashboardPublishOptionsValue != null) {
      map['dashboardPublishOptions'] = pulumi.Input.mapOptionalInputValue<
              DashboardDashboardPublishOptions, Map<String, dynamic>>(
          dashboardPublishOptionsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
          DashboardParameters,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = pulumi.Input.mapOptionalInputValue<
              List<DashboardPermission>, List<Map<String, dynamic>>>(
          permissionsValue,
          (value) => pulumi.Input.encodeList<DashboardPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceEntityValue = sourceEntity;
    if (sourceEntityValue != null) {
      map['sourceEntity'] = pulumi.Input.mapOptionalInputValue<
          DashboardSourceEntity,
          Map<String, dynamic>>(sourceEntityValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final themeArnValue = themeArn;
    if (themeArnValue != null) {
      map['themeArn'] = themeArnValue;
    }
    map['versionDescription'] = versionDescription;
    return map;
  }

  factory DashboardQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return DashboardQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      dashboardId: pulumi.Input.asInput<String>(map['dashboardId']),
      dashboardPublishOptions:
          pulumi.Input.asOptionalInput<DashboardDashboardPublishOptions>(
              map['dashboardPublishOptions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters:
          pulumi.Input.asOptionalInput<DashboardParameters>(map['parameters']),
      permissions: pulumi.Input.asOptionalInput<List<DashboardPermission>>(
          map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceEntity: pulumi.Input.asOptionalInput<DashboardSourceEntity>(
          map['sourceEntity']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      themeArn: pulumi.Input.asOptionalInput<String>(map['themeArn']),
      versionDescription:
          pulumi.Input.asInput<String>(map['versionDescription']),
    );
  }
}
