import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_measurement_response.dart';
import 'google_cloud_aiplatform_v1beta1_trial_parameter_response.dart';
import 'trial_args2.dart';

/// Adds a user provided Trial to a Study.
/// Auto-naming is currently not supported for this resource.
class Trial2 extends CustomResource {
  /// The identifier of the client that originally requested this Trial. Each client is identified by a unique client_id. When a client asks for a suggestion, Vertex AI Vizier will assign it a Trial. The client should evaluate the Trial, complete it, and report back to Vertex AI Vizier. If suggestion is asked again by same client_id before the Trial is completed, the same Trial will be returned. Multiple clients with different client_ids can ask for suggestions simultaneously, each of them will get their own Trial.
  late final Output<String> clientId;

  /// The CustomJob name linked to the Trial. It's set for a HyperparameterTuningJob's Trial.
  late final Output<String> customJob;

  /// Time when the Trial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  late final Output<String> endTime;

  /// The final measurement containing the objective value.
  late final Output<GoogleCloudAiplatformV1beta1MeasurementResponse>
      finalMeasurement;

  /// A human readable string describing why the Trial is infeasible. This is set only if Trial state is `INFEASIBLE`.
  late final Output<String> infeasibleReason;
  late final Output<String> location;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_duration). These are used for early stopping computations.
  late final Output<List<GoogleCloudAiplatformV1beta1MeasurementResponse>>
      measurements;

  /// Resource name of the Trial assigned by the service.
  late final Output<String> name;

  /// The parameters of the Trial.
  late final Output<List<GoogleCloudAiplatformV1beta1TrialParameterResponse>>
      parameters;
  late final Output<String> project;

  /// Time when the Trial was started.
  late final Output<String> startTime;

  /// The detailed state of the Trial.
  late final Output<String> state;
  late final Output<String> studyId;

  /// URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a HyperparameterTuningJob and the job's trial_job_spec.enable_web_access field is `true`. The keys are names of each node used for the trial; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  late final Output<Map<String, String>> webAccessUris;

  Trial2(
    String name, {
    TrialArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Trial',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientId = Output.createUnknown<String>();
    this.customJob = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.finalMeasurement =
        Output.createUnknown<GoogleCloudAiplatformV1beta1MeasurementResponse>();
    this.infeasibleReason = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.measurements = Output.createUnknown<
        List<GoogleCloudAiplatformV1beta1MeasurementResponse>>();
    this.name = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<
        List<GoogleCloudAiplatformV1beta1TrialParameterResponse>>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.studyId = Output.createUnknown<String>();
    this.webAccessUris = Output.createUnknown<Map<String, String>>();
  }
}
