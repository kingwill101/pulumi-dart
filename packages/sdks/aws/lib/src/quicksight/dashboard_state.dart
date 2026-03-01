// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_dashboard_publish_options.dart';
import 'dashboard_parameters.dart';
import 'dashboard_permission.dart';
import 'dashboard_source_entity.dart';

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// ARN of the dashboard.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The time that the dashboard was created.
  final pulumi.Input<String>? createdTime;
  /// Identifier for the dashboard.
  final pulumi.Input<String>? dashboardId;
  /// Options for publishing the dashboard. See dashboard_publish_options.
  final pulumi.Input<DashboardDashboardPublishOptions>? dashboardPublishOptions;
  final pulumi.Input<String>? lastPublishedTime;
  /// The time that the dashboard was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
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
  /// Amazon Resource Name (ARN) of a template that was used to create this dashboard.
  final pulumi.Input<String>? sourceEntityArn;
  /// The dashboard creation status.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  final pulumi.Input<String>? themeArn;
  /// A description of the current dashboard version being created/updated.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? versionDescription;
  /// The version number of the dashboard version.
  final pulumi.Input<int>? versionNumber;

  /// Creates a new [DashboardState].
  /// [arn] ARN of the dashboard.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [createdTime] The time that the dashboard was created.
  /// [dashboardId] Identifier for the dashboard.
  /// [dashboardPublishOptions] Options for publishing the dashboard. See dashboard_publish_options.
  /// [lastPublishedTime] Optional.
  /// [lastUpdatedTime] The time that the dashboard was last updated.
  /// [name] Display name for the dashboard.
  /// [parameters] The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  /// [permissions] A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  /// [sourceEntityArn] Amazon Resource Name (ARN) of a template that was used to create this dashboard.
  /// [status] The dashboard creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [themeArn] The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  /// [versionDescription] A description of the current dashboard version being created/updated.
  /// [versionNumber] The version number of the dashboard version.
  DashboardState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? dashboardId,
    pulumi.Output<DashboardDashboardPublishOptions>? dashboardPublishOptions,
    pulumi.Output<String>? lastPublishedTime,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<String>? name,
    pulumi.Output<DashboardParameters>? parameters,
    pulumi.Output<List<DashboardPermission>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<DashboardSourceEntity>? sourceEntity,
    pulumi.Output<String>? sourceEntityArn,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? themeArn,
    pulumi.Output<String>? versionDescription,
    pulumi.Output<int>? versionNumber,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      dashboardId = pulumi.Input.asOptionalInput<String>(dashboardId),
      dashboardPublishOptions = pulumi.Input.asOptionalInput<DashboardDashboardPublishOptions>(dashboardPublishOptions),
      lastPublishedTime = pulumi.Input.asOptionalInput<String>(lastPublishedTime),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<DashboardParameters>(parameters),
      permissions = pulumi.Input.asOptionalInput<List<DashboardPermission>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceEntity = pulumi.Input.asOptionalInput<DashboardSourceEntity>(sourceEntity),
      sourceEntityArn = pulumi.Input.asOptionalInput<String>(sourceEntityArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      themeArn = pulumi.Input.asOptionalInput<String>(themeArn),
      versionDescription = pulumi.Input.asOptionalInput<String>(versionDescription),
      versionNumber = pulumi.Input.asOptionalInput<int>(versionNumber);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'createdTime': ?createdTime,
      'dashboardId': ?dashboardId,
      'dashboardPublishOptions': ?pulumi.Input.mapOptionalInputValue<DashboardDashboardPublishOptions, Map<String, dynamic>>(dashboardPublishOptions, (value) => value.toMap()),
      'lastPublishedTime': ?lastPublishedTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<DashboardParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DashboardPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DashboardPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'sourceEntity': ?pulumi.Input.mapOptionalInputValue<DashboardSourceEntity, Map<String, dynamic>>(sourceEntity, (value) => value.toMap()),
      'sourceEntityArn': ?sourceEntityArn,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'themeArn': ?themeArn,
      'versionDescription': ?versionDescription,
      'versionNumber': ?versionNumber,
    };
  }

  factory DashboardState.fromMap(Map<String, dynamic> map) {
    return DashboardState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      dashboardId: map['dashboardId'] == null ? null : pulumi.Output.create<String>(map['dashboardId'] as String),
      dashboardPublishOptions: map['dashboardPublishOptions'] == null ? null : pulumi.Output.create<DashboardDashboardPublishOptions>(DashboardDashboardPublishOptions.fromMap((map['dashboardPublishOptions'] as Map).cast<String, dynamic>())),
      lastPublishedTime: map['lastPublishedTime'] == null ? null : pulumi.Output.create<String>(map['lastPublishedTime'] as String),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<DashboardParameters>(DashboardParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<DashboardPermission>>(pulumi.Input.decodeList<DashboardPermission>(map['permissions'], (value) => DashboardPermission.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceEntity: map['sourceEntity'] == null ? null : pulumi.Output.create<DashboardSourceEntity>(DashboardSourceEntity.fromMap((map['sourceEntity'] as Map).cast<String, dynamic>())),
      sourceEntityArn: map['sourceEntityArn'] == null ? null : pulumi.Output.create<String>(map['sourceEntityArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      themeArn: map['themeArn'] == null ? null : pulumi.Output.create<String>(map['themeArn'] as String),
      versionDescription: map['versionDescription'] == null ? null : pulumi.Output.create<String>(map['versionDescription'] as String),
      versionNumber: map['versionNumber'] == null ? null : pulumi.Output.create<int>(map['versionNumber'] as int),
    );
  }
}

