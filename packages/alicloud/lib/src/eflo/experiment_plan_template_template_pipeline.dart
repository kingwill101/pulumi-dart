// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_plan_template_template_pipeline_env_params.dart';

class ExperimentPlanTemplateTemplatePipeline {
  /// Contains a series of parameters related to the environment. See `env_params` below.
  final ExperimentPlanTemplateTemplatePipelineEnvParams envParams;
  /// Indicates the sequence number of the pipeline node.
  final int pipelineOrder;
  /// The use of the template scenario. It can have the following optional parameters:
  /// - baseline: benchmark evaluation
  final String scene;
  /// Represents additional parameters for the run.
  final Map<String, String>? settingParams;
  /// Used to uniquely identify a specific payload.
  final int workloadId;
  /// The name used to represent a specific payload.
  final String workloadName;

  /// Creates a new [ExperimentPlanTemplateTemplatePipeline].
  /// [envParams] Contains a series of parameters related to the environment. See `env_params` below.
  /// [pipelineOrder] Indicates the sequence number of the pipeline node.
  /// [scene] The use of the template scenario. It can have the following optional parameters:
  /// [settingParams] Represents additional parameters for the run.
  /// [workloadId] Used to uniquely identify a specific payload.
  /// [workloadName] The name used to represent a specific payload.
  ExperimentPlanTemplateTemplatePipeline({
    required this.envParams,
    required this.pipelineOrder,
    required this.scene,
    this.settingParams,
    required this.workloadId,
    required this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envParams': envParams.toMap(),
      'pipelineOrder': pipelineOrder,
      'scene': scene,
      'settingParams': ?settingParams,
      'workloadId': workloadId,
      'workloadName': workloadName,
    };
  }

  factory ExperimentPlanTemplateTemplatePipeline.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanTemplateTemplatePipeline(
      envParams: ExperimentPlanTemplateTemplatePipelineEnvParams.fromMap((map['envParams'] as Map).cast<String, dynamic>()),
      pipelineOrder: map['pipelineOrder'] as int,
      scene: map['scene'] as String,
      settingParams: map['settingParams'] == null ? null : (map['settingParams'] as Map).cast<String, String>(),
      workloadId: map['workloadId'] as int,
      workloadName: map['workloadName'] as String,
    );
  }
}

