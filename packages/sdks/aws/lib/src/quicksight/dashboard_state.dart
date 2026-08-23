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
  /// The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  final pulumi.Input<DashboardSourceEntity>? sourceEntity;
  /// Amazon Resource Name (ARN) of a template that was used to create this dashboard.
  final pulumi.Input<String>? sourceEntityArn;
  /// The dashboard creation status.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [sourceEntity] The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  /// [sourceEntityArn] Amazon Resource Name (ARN) of a template that was used to create this dashboard.
  /// [status] The dashboard creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [themeArn] The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  /// [versionDescription] A description of the current dashboard version being created/updated.
  /// [versionNumber] The version number of the dashboard version.
  const DashboardState({
    this.arn,
    this.awsAccountId,
    this.createdTime,
    this.dashboardId,
    this.dashboardPublishOptions,
    this.lastPublishedTime,
    this.lastUpdatedTime,
    this.name,
    this.parameters,
    this.permissions,
    this.region,
    this.sourceEntity,
    this.sourceEntityArn,
    this.status,
    this.tags,
    this.tagsAll,
    this.themeArn,
    this.versionDescription,
    this.versionNumber,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardId: (() { final guardedValue = map['dashboardId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardPublishOptions: (() { final guardedValue = map['dashboardPublishOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardDashboardPublishOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastPublishedTime: (() { final guardedValue = map['lastPublishedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardPermission>(guardedValue, (value) => DashboardPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEntity: (() { final guardedValue = map['sourceEntity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceEntityArn: (() { final guardedValue = map['sourceEntityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      themeArn: (() { final guardedValue = map['themeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionDescription: (() { final guardedValue = map['versionDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
