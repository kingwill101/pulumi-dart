// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_dashboard_publish_options.dart';
import 'dashboard_parameters.dart';
import 'dashboard_permission.dart';
import 'dashboard_source_entity.dart';

/// {@template pulumi_quicksight_dashboard_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_quicksight_dashboard_dashboard_args_doc}
class DashboardArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// Identifier for the dashboard.
  final pulumi.Input<String> dashboardId;
  /// Options for publishing the dashboard. See dashboard_publish_options.
  final pulumi.Input<DashboardDashboardPublishOptions?>? dashboardPublishOptions;
  /// Display name for the dashboard.
  final pulumi.Input<String?>? name;
  /// The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  final pulumi.Input<DashboardParameters?>? parameters;
  /// A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  final pulumi.Input<List<DashboardPermission>?>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  final pulumi.Input<DashboardSourceEntity?>? sourceEntity;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ARN of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  final pulumi.Input<String?>? themeArn;
  /// A description of the current dashboard version being created/updated.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> versionDescription;

  /// Creates a new [DashboardArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dashboardId] Identifier for the dashboard.
  /// [dashboardPublishOptions] Options for publishing the dashboard. See dashboard_publish_options.
  /// [name] Display name for the dashboard.
  /// [parameters] The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  /// [permissions] A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [themeArn] ARN of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  /// [versionDescription] A description of the current dashboard version being created/updated.
  const DashboardArgs({
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
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'dashboardId': dashboardId,
      'dashboardPublishOptions': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptions, Map<String, dynamic>>(dashboardPublishOptions, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<DashboardParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DashboardPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DashboardPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'sourceEntity': ?pulumi.Input.mapOptionalInputValue<DashboardSourceEntity, Map<String, dynamic>>(sourceEntity, (value) => value.toMap()),
      'tags': ?tags,
      'themeArn': ?themeArn,
      'versionDescription': versionDescription,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardId: pulumi.Input.fromValue(map['dashboardId'] as String),
      dashboardPublishOptions: (() { final guardedValue = map['dashboardPublishOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardPermission>(guardedValue, (value) => DashboardPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEntity: (() { final guardedValue = map['sourceEntity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      themeArn: (() { final guardedValue = map['themeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionDescription: pulumi.Input.fromValue(map['versionDescription'] as String),
    );
  }
}
