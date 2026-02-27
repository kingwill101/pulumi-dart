import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_measurement_response.dart';
import 'google_cloud_aiplatform_v1_trial_parameter_response.dart';
import 'trial_args.dart';

/// Adds a user provided Trial to a Study.
/// Auto-naming is currently not supported for this resource.
class Trial extends pulumi.CustomResource {
  /// The identifier of the client that originally requested this Trial. Each client is identified by a unique client_id. When a client asks for a suggestion, Vertex AI Vizier will assign it a Trial. The client should evaluate the Trial, complete it, and report back to Vertex AI Vizier. If suggestion is asked again by same client_id before the Trial is completed, the same Trial will be returned. Multiple clients with different client_ids can ask for suggestions simultaneously, each of them will get their own Trial.
  late final pulumi.Output<String> clientId;

  /// The CustomJob name linked to the Trial. It's set for a HyperparameterTuningJob's Trial.
  late final pulumi.Output<String> customJob;

  /// Time when the Trial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  late final pulumi.Output<String> endTime;

  /// The final measurement containing the objective value.
  late final pulumi.Output<GoogleCloudAiplatformV1MeasurementResponse>
      finalMeasurement;

  /// A human readable string describing why the Trial is infeasible. This is set only if Trial state is `INFEASIBLE`.
  late final pulumi.Output<String> infeasibleReason;
  late final pulumi.Output<String> location;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_duration). These are used for early stopping computations.
  late final pulumi.Output<List<GoogleCloudAiplatformV1MeasurementResponse>>
      measurements;

  /// Resource name of the Trial assigned by the service.
  late final pulumi.Output<String> name;

  /// The parameters of the Trial.
  late final pulumi.Output<List<GoogleCloudAiplatformV1TrialParameterResponse>>
      parameters;
  late final pulumi.Output<String> project;

  /// Time when the Trial was started.
  late final pulumi.Output<String> startTime;

  /// The detailed state of the Trial.
  late final pulumi.Output<String> state;
  late final pulumi.Output<String> studyId;

  /// URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a HyperparameterTuningJob and the job's trial_job_spec.enable_web_access field is `true`. The keys are names of each node used for the trial; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  late final pulumi.Output<Map<String, String>> webAccessUris;

  Trial(
    String name, {
    TrialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:Trial',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String>('clientId');
    this.customJob = registerOutput<String>('customJob');
    this.endTime = registerOutput<String>('endTime');
    this.finalMeasurement =
        registerOutput<GoogleCloudAiplatformV1MeasurementResponse>(
            'finalMeasurement');
    this.infeasibleReason = registerOutput<String>('infeasibleReason');
    this.location = registerOutput<String>('location');
    this.measurements =
        registerOutput<List<GoogleCloudAiplatformV1MeasurementResponse>>(
            'measurements');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<GoogleCloudAiplatformV1TrialParameterResponse>>(
            'parameters');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.studyId = registerOutput<String>('studyId');
    this.webAccessUris = registerOutput<Map<String, String>>('webAccessUris');
  }
}
