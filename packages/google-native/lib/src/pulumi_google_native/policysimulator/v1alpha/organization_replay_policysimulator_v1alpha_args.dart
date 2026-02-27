// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// The set of arguments for OrganizationReplay.
class OrganizationReplayPolicysimulatorV1alphaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  OrganizationReplayPolicysimulatorV1alphaArgs({
    required this.config,
    this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1alphaReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory OrganizationReplayPolicysimulatorV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationReplayPolicysimulatorV1alphaArgs(
      config:
          pulumi.Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(
              map['config']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
