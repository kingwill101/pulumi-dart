// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_autoscaling_config/instance_autoscaling_config.dart';

/// The set of arguments for Instance.
class InstanceSpannerArgs {
  final pulumi.Input<InstanceAutoscalingConfig>? autoscalingConfig;

  /// The name of the instance's configuration (similar but not
  /// quite the same as a region) which defines the geographic placement and
  /// replication of your databases in this instance. It determines where your data
  /// is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
  /// In order to obtain a valid list please consult the
  /// [Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  final pulumi.Input<String> config;

  /// Controls the default backup behavior for new databases within the instance.
  /// Note that `AUTOMATIC` is not permitted for free instances, as backups and backup schedules are not allowed for free instances.
  /// if unset or NONE, no default backup schedule will be created for new databases within the instance.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  final pulumi.Input<String>? defaultBackupScheduleType;

  /// The descriptive name for this instance as it appears in UIs. Must be
  /// unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String> displayName;

  /// The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// Possible values are: `EDITION_UNSPECIFIED`, `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`.
  final pulumi.Input<String>? edition;

  /// When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// This must be set to true if you created a backup manually in the console.
  final pulumi.Input<bool>? forceDestroy;

  /// The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// usage restrictions, quotas and billing. Currently this is used to distinguish FREE_INSTANCE vs PROVISIONED instances.
  /// When configured as FREE_INSTANCE, the field `edition` should not be configured.
  /// Possible values are: `PROVISIONED`, `FREE_INSTANCE`.
  final pulumi.Input<String>? instanceType;

  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A unique identifier for the instance, which cannot be changed after
  /// the instance is created. The name must be between 6 and 30 characters
  /// in length.
  /// If not provided, a random string starting with `tf-` will be selected.
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? numNodes;
  final pulumi.Input<int>? processingUnits;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  InstanceSpannerArgs({
    this.autoscalingConfig,
    required this.config,
    this.defaultBackupScheduleType,
    required this.displayName,
    this.edition,
    this.forceDestroy,
    this.instanceType,
    this.labels,
    this.name,
    this.numNodes,
    this.processingUnits,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceAutoscalingConfig, Map<String, dynamic>>(
          autoscalingConfigValue, (value) => value.toMap());
    }
    map['config'] = config;
    final defaultBackupScheduleTypeValue = defaultBackupScheduleType;
    if (defaultBackupScheduleTypeValue != null) {
      map['defaultBackupScheduleType'] = defaultBackupScheduleTypeValue;
    }
    map['displayName'] = displayName;
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final numNodesValue = numNodes;
    if (numNodesValue != null) {
      map['numNodes'] = numNodesValue;
    }
    final processingUnitsValue = processingUnits;
    if (processingUnitsValue != null) {
      map['processingUnits'] = processingUnitsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceSpannerArgs.fromMap(Map<String, dynamic> map) {
    return InstanceSpannerArgs(
      autoscalingConfig:
          pulumi.Input.asOptionalInput<InstanceAutoscalingConfig>(
              map['autoscalingConfig']),
      config: pulumi.Input.asInput<String>(map['config']),
      defaultBackupScheduleType: pulumi.Input.asOptionalInput<String>(
          map['defaultBackupScheduleType']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      edition: pulumi.Input.asOptionalInput<String>(map['edition']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      instanceType: pulumi.Input.asOptionalInput<String>(map['instanceType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      numNodes: pulumi.Input.asOptionalInput<int>(map['numNodes']),
      processingUnits:
          pulumi.Input.asOptionalInput<int>(map['processingUnits']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
