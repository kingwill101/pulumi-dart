// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_plan_template_template_pipeline_env_params.dart';

class ExperimentPlanTemplateTemplatePipeline {
  /// Contains a series of parameters related to the environment. See `env_params` below.
  final pulumi.Input<ExperimentPlanTemplateTemplatePipelineEnvParams> envParams;
  /// Indicates the sequence number of the pipeline node.
  final pulumi.Input<int> pipelineOrder;
  /// The use of the template scenario. It can have the following optional parameters:
  /// - baseline: benchmark evaluation
  final pulumi.Input<String> scene;
  /// Represents additional parameters for the run.
  final pulumi.Input<Map<String, String>>? settingParams;
  /// Used to uniquely identify a specific payload.
  final pulumi.Input<int> workloadId;
  /// The name used to represent a specific payload.
  final pulumi.Input<String> workloadName;

  /// Creates a new [ExperimentPlanTemplateTemplatePipeline].
  /// [envParams] Contains a series of parameters related to the environment. See `env_params` below.
  /// [pipelineOrder] Indicates the sequence number of the pipeline node.
  /// [scene] The use of the template scenario. It can have the following optional parameters:
  /// [settingParams] Represents additional parameters for the run.
  /// [workloadId] Used to uniquely identify a specific payload.
  /// [workloadName] The name used to represent a specific payload.
  const ExperimentPlanTemplateTemplatePipeline({
    required this.envParams,
    required this.pipelineOrder,
    required this.scene,
    this.settingParams,
    required this.workloadId,
    required this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envParams': pulumi.Input.mapInputValue<ExperimentPlanTemplateTemplatePipelineEnvParams, Map<String, dynamic>>(envParams, (value) => value.toMap()),
      'pipelineOrder': pipelineOrder,
      'scene': scene,
      'settingParams': ?settingParams,
      'workloadId': workloadId,
      'workloadName': workloadName,
    };
  }

  factory ExperimentPlanTemplateTemplatePipeline.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanTemplateTemplatePipeline(
      envParams: pulumi.Input.fromValue(ExperimentPlanTemplateTemplatePipelineEnvParams.fromMap((map['envParams']! as Map).cast<String, dynamic>())),
      pipelineOrder: pulumi.Input.fromValue(map['pipelineOrder'] as int),
      scene: pulumi.Input.fromValue(map['scene'] as String),
      settingParams: (() { final guardedValue = map['settingParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadId: pulumi.Input.fromValue(map['workloadId'] as int),
      workloadName: pulumi.Input.fromValue(map['workloadName'] as String),
    );
  }
}

