import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_policysimulator_v1_replay_config_response.dart';
import 'google_cloud_policysimulator_v1_replay_results_summary_response.dart';
import 'replay_args.dart';

/// Creates and starts a Replay using the given ReplayConfig.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Replay extends CustomResource {
  /// The configuration used for the `Replay`.
  late final Output<GoogleCloudPolicysimulatorV1ReplayConfigResponse> config;
  late final Output<String> location;

  /// The resource name of the `Replay`, which has the following format: `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`, where `{resource-id}` is the ID of the project, folder, or organization that owns the Replay. Example: `projects/my-example-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
  late final Output<String> name;
  late final Output<String> project;

  /// Summary statistics about the replayed log entries.
  late final Output<GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse>
      resultsSummary;

  /// The current state of the `Replay`.
  late final Output<String> state;

  Replay(
    String name, {
    ReplayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:policysimulator/v1:Replay',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config =
        registerOutput<GoogleCloudPolicysimulatorV1ReplayConfigResponse>(
            'config');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resultsSummary = registerOutput<
            GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse>(
        'resultsSummary');
    this.state = registerOutput<String>('state');
  }
}
