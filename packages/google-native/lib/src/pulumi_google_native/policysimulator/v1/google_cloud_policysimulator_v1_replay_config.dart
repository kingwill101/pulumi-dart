// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_policysimulator_v1_replay_config_log_source.dart';

/// The configuration used for a Replay.
class GoogleCloudPolicysimulatorV1ReplayConfig {
  /// The logs to use as input for the Replay.
  final GoogleCloudPolicysimulatorV1ReplayConfigLogSource? logSource;

  /// A mapping of the resources that you want to simulate policies for and the policies that you want to simulate. Keys are the full resource names for the resources. For example, `//cloudresourcemanager.googleapis.com/projects/my-project`. For examples of full resource names for Google Cloud services, see https://cloud.google.com/iam/help/troubleshooter/full-resource-names. Values are Policy objects representing the policies that you want to simulate. Replays automatically take into account any IAM policies inherited through the resource hierarchy, and any policies set on descendant resources. You do not need to include these policies in the policy overlay.
  final Map<String, String>? policyOverlay;

  GoogleCloudPolicysimulatorV1ReplayConfig({
    this.logSource,
    this.policyOverlay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logSourceValue = logSource;
    if (logSourceValue != null) {
      map['logSource'] = logSourceValue.value;
    }
    final policyOverlayValue = policyOverlay;
    if (policyOverlayValue != null) {
      map['policyOverlay'] = policyOverlayValue;
    }
    return map;
  }

  factory GoogleCloudPolicysimulatorV1ReplayConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudPolicysimulatorV1ReplayConfig(
      logSource: map['logSource'] == null
          ? null
          : GoogleCloudPolicysimulatorV1ReplayConfigLogSource.fromValue(
              map['logSource'] as String),
      policyOverlay: map['policyOverlay'] == null
          ? null
          : (map['policyOverlay'] as Map).cast<String, String>(),
    );
  }
}
