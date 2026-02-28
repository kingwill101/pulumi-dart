// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_scheduled_splits_config_step_segment_override.dart';

class LaunchScheduledSplitsConfigStep {
  /// The traffic allocation percentages among the feature variations during one step of a launch. This is a set of key-value pairs. The keys are variation names. The values represent the percentage of traffic to allocate to that variation during this step. For more information, refer to the [AWS documentation for ScheduledSplitConfig groupWeights](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ScheduledSplitConfig.html).
  final Map<String, int> groupWeights;

  /// One or up to six blocks that specify different traffic splits for one or more audience segments. A segment is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects, such as age. Detailed below.
  final List<LaunchScheduledSplitsConfigStepSegmentOverride>? segmentOverrides;

  /// Specifies the date and time that this step of the launch starts.
  final String startTime;

  /// Creates a new [LaunchScheduledSplitsConfigStep].
  /// [groupWeights] The traffic allocation percentages among the feature variations during one step of a launch. This is a set of key-value pairs. The keys are variation names. The values represent the percentage of traffic to allocate to that variation during this step. For more information, refer to the [AWS documentation for ScheduledSplitConfig groupWeights](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ScheduledSplitConfig.html).
  /// [segmentOverrides] One or up to six blocks that specify different traffic splits for one or more audience segments. A segment is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects, such as age. Detailed below.
  /// [startTime] Specifies the date and time that this step of the launch starts.
  LaunchScheduledSplitsConfigStep({
    required this.groupWeights,
    this.segmentOverrides,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupWeights'] = groupWeights;
    final segmentOverridesValue = segmentOverrides;
    if (segmentOverridesValue != null) {
      map['segmentOverrides'] = pulumi.Input.encodeList<
              LaunchScheduledSplitsConfigStepSegmentOverride,
              Map<String, dynamic>>(
          segmentOverridesValue, (value) => value.toMap());
    }
    map['startTime'] = startTime;
    return map;
  }

  factory LaunchScheduledSplitsConfigStep.fromMap(Map<String, dynamic> map) {
    return LaunchScheduledSplitsConfigStep(
      groupWeights: (map['groupWeights'] as Map).cast<String, int>(),
      segmentOverrides: map['segmentOverrides'] == null
          ? null
          : pulumi.Input.decodeList<
                  LaunchScheduledSplitsConfigStepSegmentOverride>(
              map['segmentOverrides'],
              (value) => LaunchScheduledSplitsConfigStepSegmentOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
    );
  }
}
