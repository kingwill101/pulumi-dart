// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// The set of arguments for OrganizationReplay.
class OrganizationReplayArgs2 {
  /// The configuration used for the `Replay`.
  final Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final Input<String>? location;
  final Input<String> organizationId;

  OrganizationReplayArgs2({
    required this.config,
    this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = Input.mapInputValue<
        GoogleCloudPolicysimulatorV1alphaReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory OrganizationReplayArgs2.fromMap(Map<String, dynamic> map) {
    return OrganizationReplayArgs2(
      config: Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(
          map['config']),
      location: Input.asOptionalInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
