// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../launch_scheduled_splits_config_step/launch_scheduled_splits_config_step.dart';

class LaunchScheduledSplitsConfig {
  /// One or up to six blocks that define the traffic allocation percentages among the feature variations during each step of the launch. This also defines the start time of each step. Detailed below.
  final List<LaunchScheduledSplitsConfigStep> steps;

  LaunchScheduledSplitsConfig({
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['steps'] =
        Input.encodeList<LaunchScheduledSplitsConfigStep, Map<String, dynamic>>(
            steps, (value) => value.toMap());
    return map;
  }

  factory LaunchScheduledSplitsConfig.fromMap(Map<String, dynamic> map) {
    return LaunchScheduledSplitsConfig(
      steps: Input.decodeList<LaunchScheduledSplitsConfigStep>(
          map['steps'],
          (value) => LaunchScheduledSplitsConfigStep.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
