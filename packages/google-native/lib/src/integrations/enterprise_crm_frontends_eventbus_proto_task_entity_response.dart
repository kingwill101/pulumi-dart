// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_task_metadata_response.dart';
import 'enterprise_crm_eventbus_proto_task_ui_config_response.dart';
import 'enterprise_crm_eventbus_stats_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_param_specs_message_response.dart';

/// Contains a task's metadata and associated information. Next available id: 7
class EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse {
  /// True if the task has conflict with vpcsc
  final bool disabledForVpcSc;

  /// Metadata inclueds the task name, author and so on.
  final EnterpriseCrmEventbusProtoTaskMetadataResponse metadata;

  /// Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  final EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse paramSpecs;

  /// Deprecated - statistics from the Monarch query.
  final EnterpriseCrmEventbusStatsResponse stats;

  /// Defines the type of the task
  final String taskType;

  /// UI configuration for this task Also associated with the METADATA mask.
  final EnterpriseCrmEventbusProtoTaskUiConfigResponse uiConfig;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse].
  /// [disabledForVpcSc] True if the task has conflict with vpcsc
  /// [metadata] Metadata inclueds the task name, author and so on.
  /// [paramSpecs] Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  /// [stats] Deprecated - statistics from the Monarch query.
  /// [taskType] Defines the type of the task
  /// [uiConfig] UI configuration for this task Also associated with the METADATA mask.
  EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse({
    required this.disabledForVpcSc,
    required this.metadata,
    required this.paramSpecs,
    required this.stats,
    required this.taskType,
    required this.uiConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledForVpcSc': disabledForVpcSc,
      'metadata': metadata.toMap(),
      'paramSpecs': paramSpecs.toMap(),
      'stats': stats.toMap(),
      'taskType': taskType,
      'uiConfig': uiConfig.toMap(),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse(
      disabledForVpcSc: map['disabledForVpcSc'] as bool,
      metadata: EnterpriseCrmEventbusProtoTaskMetadataResponse.fromMap(
        (map['metadata'] as Map).cast<String, dynamic>(),
      ),
      paramSpecs:
          EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse.fromMap(
            (map['paramSpecs'] as Map).cast<String, dynamic>(),
          ),
      stats: EnterpriseCrmEventbusStatsResponse.fromMap(
        (map['stats'] as Map).cast<String, dynamic>(),
      ),
      taskType: map['taskType'] as String,
      uiConfig: EnterpriseCrmEventbusProtoTaskUiConfigResponse.fromMap(
        (map['uiConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
