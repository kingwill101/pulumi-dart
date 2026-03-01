import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_response.dart';
import 'google_cloud_ml_v1_trial_parameter_response.dart';
import 'trial_args.dart';

/// Adds a user provided trial to a study.
/// Auto-naming is currently not supported for this resource.
class Trial extends pulumi.CustomResource {
  /// The identifier of the client that originally requested this trial.
  late final pulumi.Output<String> clientId;

  /// Time at which the trial's status changed to COMPLETED.
  late final pulumi.Output<String> endTime;

  /// The final measurement containing the objective value.
  late final pulumi.Output<GoogleCloudMlV1MeasurementResponse> finalMeasurement;

  /// A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.
  late final pulumi.Output<String> infeasibleReason;
  late final pulumi.Output<String> location;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  late final pulumi.Output<List<GoogleCloudMlV1MeasurementResponse>>
  measurements;

  /// Name of the trial assigned by the service.
  late final pulumi.Output<String> name;

  /// The parameters of the trial.
  late final pulumi.Output<List<GoogleCloudMlV1TrialParameterResponse>>
  parameters;
  late final pulumi.Output<String> project;

  /// Time at which the trial was started.
  late final pulumi.Output<String> startTime;

  /// The detailed state of a trial.
  late final pulumi.Output<String> state;
  late final pulumi.Output<String> studyId;

  /// If true, the parameters in this trial are not attempted again.
  late final pulumi.Output<bool> trialInfeasible;

  /// Creates a new [Trial].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trial]. {@macro pulumi_ml_v1_trial_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trial(String name, {TrialArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:ml/v1:Trial',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.clientId = registerOutput<String>('clientId');
    this.endTime = registerOutput<String>('endTime');
    this.finalMeasurement = registerOutput<GoogleCloudMlV1MeasurementResponse>(
      'finalMeasurement',
    );
    this.infeasibleReason = registerOutput<String>('infeasibleReason');
    this.location = registerOutput<String>('location');
    this.measurements =
        registerOutput<List<GoogleCloudMlV1MeasurementResponse>>(
          'measurements',
        );
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<GoogleCloudMlV1TrialParameterResponse>>(
          'parameters',
        );
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.studyId = registerOutput<String>('studyId');
    this.trialInfeasible = registerOutput<bool>('trialInfeasible');
  }
}
