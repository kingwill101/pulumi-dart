import 'package:pulumi/pulumi.dart' hide Config;
import 'experiment_args3.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_definition_response.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_result_response.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_state_response.dart';
import 'google_cloud_dialogflow_cx_v3_variants_history_response.dart';

/// Creates an Experiment in the specified Environment.
class Experiment3 extends CustomResource {
  late final Output<String> agentId;

  /// Creation time of this experiment.
  late final Output<String> createTime;

  /// The definition of the experiment.
  late final Output<GoogleCloudDialogflowCxV3ExperimentDefinitionResponse>
      definition;

  /// The human-readable description of the experiment.
  late final Output<String> description;

  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  late final Output<String> displayName;

  /// End time of this experiment.
  late final Output<String> endTime;
  late final Output<String> environmentId;

  /// Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  late final Output<String> experimentLength;

  /// Last update time of this experiment.
  late final Output<String> lastUpdateTime;
  late final Output<String> location;

  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  late final Output<String> name;
  late final Output<String> project;

  /// Inference result of the experiment.
  late final Output<GoogleCloudDialogflowCxV3ExperimentResultResponse> result;

  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  late final Output<GoogleCloudDialogflowCxV3RolloutConfigResponse>
      rolloutConfig;

  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  late final Output<String> rolloutFailureReason;

  /// State of the auto rollout process.
  late final Output<GoogleCloudDialogflowCxV3RolloutStateResponse> rolloutState;

  /// Start time of this experiment.
  late final Output<String> startTime;

  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
  late final Output<String> state;

  /// The history of updates to the experiment variants.
  late final Output<List<GoogleCloudDialogflowCxV3VariantsHistoryResponse>>
      variantsHistory;

  Experiment3(
    String name, {
    ExperimentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:Experiment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.createTime = registerOutput<String>('createTime');
    this.definition =
        registerOutput<GoogleCloudDialogflowCxV3ExperimentDefinitionResponse>(
            'definition');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.endTime = registerOutput<String>('endTime');
    this.environmentId = registerOutput<String>('environmentId');
    this.experimentLength = registerOutput<String>('experimentLength');
    this.lastUpdateTime = registerOutput<String>('lastUpdateTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.result =
        registerOutput<GoogleCloudDialogflowCxV3ExperimentResultResponse>(
            'result');
    this.rolloutConfig =
        registerOutput<GoogleCloudDialogflowCxV3RolloutConfigResponse>(
            'rolloutConfig');
    this.rolloutFailureReason = registerOutput<String>('rolloutFailureReason');
    this.rolloutState =
        registerOutput<GoogleCloudDialogflowCxV3RolloutStateResponse>(
            'rolloutState');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.variantsHistory =
        registerOutput<List<GoogleCloudDialogflowCxV3VariantsHistoryResponse>>(
            'variantsHistory');
  }
}
