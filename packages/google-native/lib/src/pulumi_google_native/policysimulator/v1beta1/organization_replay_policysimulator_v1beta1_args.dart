// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// The set of arguments for OrganizationReplay.
class OrganizationReplayPolicysimulatorV1beta1Args {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  OrganizationReplayPolicysimulatorV1beta1Args({
    required this.config,
    this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<
        GoogleCloudPolicysimulatorV1beta1ReplayConfig,
        Map<String, dynamic>>(config, (value) => value.toMap());
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory OrganizationReplayPolicysimulatorV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return OrganizationReplayPolicysimulatorV1beta1Args(
      config:
          pulumi.Input.asInput<GoogleCloudPolicysimulatorV1beta1ReplayConfig>(
              map['config']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
