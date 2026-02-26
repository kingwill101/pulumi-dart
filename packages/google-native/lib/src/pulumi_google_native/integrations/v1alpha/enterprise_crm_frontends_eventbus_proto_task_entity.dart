// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_task_metadata.dart';
import 'enterprise_crm_eventbus_proto_task_ui_config.dart';
import 'enterprise_crm_eventbus_stats.dart';
import 'enterprise_crm_frontends_eventbus_proto_param_specs_message.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_entity_task_type.dart';

/// Contains a task's metadata and associated information. Next available id: 7
class EnterpriseCrmFrontendsEventbusProtoTaskEntity {
  /// True if the task has conflict with vpcsc
  final bool? disabledForVpcSc;

  /// Metadata inclueds the task name, author and so on.
  final EnterpriseCrmEventbusProtoTaskMetadata? metadata;

  /// Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  final EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage? paramSpecs;

  /// Deprecated - statistics from the Monarch query.
  final EnterpriseCrmEventbusStats? stats;

  /// Defines the type of the task
  final EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType? taskType;

  /// UI configuration for this task Also associated with the METADATA mask.
  final EnterpriseCrmEventbusProtoTaskUiConfig? uiConfig;

  EnterpriseCrmFrontendsEventbusProtoTaskEntity({
    this.disabledForVpcSc,
    this.metadata,
    this.paramSpecs,
    this.stats,
    this.taskType,
    this.uiConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledForVpcScValue = disabledForVpcSc;
    if (disabledForVpcScValue != null) {
      map['disabledForVpcSc'] = disabledForVpcScValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    final paramSpecsValue = paramSpecs;
    if (paramSpecsValue != null) {
      map['paramSpecs'] = paramSpecsValue.toMap();
    }
    final statsValue = stats;
    if (statsValue != null) {
      map['stats'] = statsValue.toMap();
    }
    final taskTypeValue = taskType;
    if (taskTypeValue != null) {
      map['taskType'] = taskTypeValue.value;
    }
    final uiConfigValue = uiConfig;
    if (uiConfigValue != null) {
      map['uiConfig'] = uiConfigValue.toMap();
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskEntity(
      disabledForVpcSc: map['disabledForVpcSc'] == null
          ? null
          : map['disabledForVpcSc'] as bool,
      metadata: map['metadata'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      paramSpecs: map['paramSpecs'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromMap(
              (map['paramSpecs'] as Map).cast<String, dynamic>()),
      stats: map['stats'] == null
          ? null
          : EnterpriseCrmEventbusStats.fromMap(
              (map['stats'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType.fromValue(
              map['taskType'] as String),
      uiConfig: map['uiConfig'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskUiConfig.fromMap(
              (map['uiConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
