// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta_organization_replay_policysimulator_v1beta_args_doc}
/// The set of arguments for OrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_organization_replay_policysimulator_v1beta_args_doc}
class OrganizationReplayPolicysimulatorV1betaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1betaReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationReplayPolicysimulatorV1betaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [organizationId] Required.
  OrganizationReplayPolicysimulatorV1betaArgs({
    required GoogleCloudPolicysimulatorV1betaReplayConfig config,
    String? location,
    required String organizationId,
  }) : config = pulumi
           .Input.asInput<GoogleCloudPolicysimulatorV1betaReplayConfig>(config),
       location = pulumi.Input.asOptionalInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1betaReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'location': ?location,
      'organizationId': organizationId,
    };
  }

  factory OrganizationReplayPolicysimulatorV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationReplayPolicysimulatorV1betaArgs(
      config: GoogleCloudPolicysimulatorV1betaReplayConfig.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
      location: map['location'] == null ? null : map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
