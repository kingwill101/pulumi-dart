// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1_replay_config.dart';

/// {@template pulumi_policysimulator_v1_organization_replay_args_doc}
/// The set of arguments for OrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_organization_replay_args_doc}
class OrganizationReplayArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationReplayArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [organizationId] Required.
  OrganizationReplayArgs({
    required GoogleCloudPolicysimulatorV1ReplayConfig config,
    String? location,
    required String organizationId,
  }) : config = pulumi.Input.asInput<GoogleCloudPolicysimulatorV1ReplayConfig>(
         config,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1ReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'location': ?location,
      'organizationId': organizationId,
    };
  }

  factory OrganizationReplayArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationReplayArgs(
      config: GoogleCloudPolicysimulatorV1ReplayConfig.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
      location: map['location'] == null ? null : map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
