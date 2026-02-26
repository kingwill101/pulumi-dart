import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_measurement_response.dart';
import 'google_cloud_ml_v1_trial_parameter_response.dart';
import 'trial_args3.dart';

/// Adds a user provided trial to a study.
/// Auto-naming is currently not supported for this resource.
class Trial3 extends CustomResource {
  /// The identifier of the client that originally requested this trial.
  late final Output<String> clientId;

  /// Time at which the trial's status changed to COMPLETED.
  late final Output<String> endTime;

  /// The final measurement containing the objective value.
  late final Output<GoogleCloudMlV1MeasurementResponse> finalMeasurement;

  /// A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.
  late final Output<String> infeasibleReason;
  late final Output<String> location;

  /// A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
  late final Output<List<GoogleCloudMlV1MeasurementResponse>> measurements;

  /// Name of the trial assigned by the service.
  late final Output<String> name;

  /// The parameters of the trial.
  late final Output<List<GoogleCloudMlV1TrialParameterResponse>> parameters;
  late final Output<String> project;

  /// Time at which the trial was started.
  late final Output<String> startTime;

  /// The detailed state of a trial.
  late final Output<String> state;
  late final Output<String> studyId;

  /// If true, the parameters in this trial are not attempted again.
  late final Output<bool> trialInfeasible;

  Trial3(
    String name, {
    TrialArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:ml/v1:Trial',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientId = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.finalMeasurement =
        Output.createUnknown<GoogleCloudMlV1MeasurementResponse>();
    this.infeasibleReason = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.measurements =
        Output.createUnknown<List<GoogleCloudMlV1MeasurementResponse>>();
    this.name = Output.createUnknown<String>();
    this.parameters =
        Output.createUnknown<List<GoogleCloudMlV1TrialParameterResponse>>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.studyId = Output.createUnknown<String>();
    this.trialInfeasible = Output.createUnknown<bool>();
  }
}
