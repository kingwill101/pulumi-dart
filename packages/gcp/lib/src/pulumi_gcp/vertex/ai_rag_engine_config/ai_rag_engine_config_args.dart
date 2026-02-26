// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_rag_engine_config_rag_managed_db_config/ai_rag_engine_config_rag_managed_db_config.dart';

/// The set of arguments for AiRagEngineConfig.
class AiRagEngineConfigArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Required. The config of the RagManagedDb used by RagEngine.
  /// Structure is documented below.
  final Input<AiRagEngineConfigRagManagedDbConfig> ragManagedDbConfig;

  /// The region of the RagEngineConfig. eg us-central1
  final Input<String>? region;

  AiRagEngineConfigArgs({
    this.project,
    required this.ragManagedDbConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['ragManagedDbConfig'] = Input.mapInputValue<
        AiRagEngineConfigRagManagedDbConfig,
        Map<String, dynamic>>(ragManagedDbConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiRagEngineConfigArgs.fromMap(Map<String, dynamic> map) {
    return AiRagEngineConfigArgs(
      project: Input.asOptionalInput<String>(map['project']),
      ragManagedDbConfig: Input.asInput<AiRagEngineConfigRagManagedDbConfig>(
          map['ragManagedDbConfig']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
