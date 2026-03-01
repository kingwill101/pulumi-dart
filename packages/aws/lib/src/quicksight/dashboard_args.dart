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

  /// Creates a new [DashboardArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dashboardId] Identifier for the dashboard.
  /// [dashboardPublishOptions] Options for publishing the dashboard. See dashboard_publish_options.
  /// [name] Display name for the dashboard.
  /// [parameters] The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  /// [permissions] A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [themeArn] The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  /// [versionDescription] A description of the current dashboard version being created/updated.
  DashboardArgs({
    String? awsAccountId,
    required String dashboardId,
    DashboardDashboardPublishOptions? dashboardPublishOptions,
    String? name,
    DashboardParameters? parameters,
    List<DashboardPermission>? permissions,
    String? region,
    DashboardSourceEntity? sourceEntity,
    Map<String, String>? tags,
    String? themeArn,
    required String versionDescription,
  }) : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
       dashboardId = pulumi.Input.asInput<String>(dashboardId),
       dashboardPublishOptions =
           pulumi.Input.asOptionalInput<DashboardDashboardPublishOptions>(
             dashboardPublishOptions,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       parameters = pulumi.Input.asOptionalInput<DashboardParameters>(
         parameters,
       ),
       permissions = pulumi.Input.asOptionalInput<List<DashboardPermission>>(
         permissions,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       sourceEntity = pulumi.Input.asOptionalInput<DashboardSourceEntity>(
         sourceEntity,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       themeArn = pulumi.Input.asOptionalInput<String>(themeArn),
       versionDescription = pulumi.Input.asInput<String>(versionDescription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'dashboardId': dashboardId,
      'dashboardPublishOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DashboardDashboardPublishOptions,
            Map<String, dynamic>
          >(dashboardPublishOptions, (value) => value.toMap()),
      'name': ?name,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            DashboardParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'permissions':
          ?pulumi.Input.mapOptionalInputValue<
            List<DashboardPermission>,
            List<Map<String, dynamic>>
          >(
            permissions,
            (value) =>
                pulumi.Input.encodeList<
                  DashboardPermission,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'sourceEntity':
          ?pulumi.Input.mapOptionalInputValue<
            DashboardSourceEntity,
            Map<String, dynamic>
          >(sourceEntity, (value) => value.toMap()),
      'tags': ?tags,
      'themeArn': ?themeArn,
      'versionDescription': versionDescription,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      awsAccountId: map['awsAccountId'] == null
          ? null
          : map['awsAccountId'] as String,
      dashboardId: map['dashboardId'] as String,
      dashboardPublishOptions: map['dashboardPublishOptions'] == null
          ? null
          : DashboardDashboardPublishOptions.fromMap(
              (map['dashboardPublishOptions'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : DashboardParameters.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>(),
            ),
      permissions: map['permissions'] == null
          ? null
          : pulumi.Input.decodeList<DashboardPermission>(
              map['permissions'],
              (value) => DashboardPermission.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      sourceEntity: map['sourceEntity'] == null
          ? null
          : DashboardSourceEntity.fromMap(
              (map['sourceEntity'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      themeArn: map['themeArn'] == null ? null : map['themeArn'] as String,
      versionDescription: map['versionDescription'] as String,
    );
  }
}
