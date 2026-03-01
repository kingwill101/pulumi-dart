// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// {@template pulumi_policysimulator_v1alpha_organization_replay_policysimulator_v1alpha_args_doc}
/// The set of arguments for OrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_organization_replay_policysimulator_v1alpha_args_doc}
class OrganizationReplayPolicysimulatorV1alphaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationReplayPolicysimulatorV1alphaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [organizationId] Required.
  OrganizationReplayPolicysimulatorV1alphaArgs({
    required GoogleCloudPolicysimulatorV1alphaReplayConfig config,
    String? location,
    required String organizationId,
  }) : config =
           pulumi.Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(
             config,
           ),
       location = pulumi.Input.asOptionalInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1alphaReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'location': ?location,
      'organizationId': organizationId,
    };
  }

  factory OrganizationReplayPolicysimulatorV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationReplayPolicysimulatorV1alphaArgs(
      config: GoogleCloudPolicysimulatorV1alphaReplayConfig.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
      location: map['location'] == null ? null : map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
