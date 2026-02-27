// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1_replay_config.dart';

/// The set of arguments for OrganizationReplay.
class OrganizationReplayArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  OrganizationReplayArgs({
    required this.config,
    this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1ReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory OrganizationReplayArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationReplayArgs(
      config: pulumi.Input.asInput<GoogleCloudPolicysimulatorV1ReplayConfig>(
          map['config']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
