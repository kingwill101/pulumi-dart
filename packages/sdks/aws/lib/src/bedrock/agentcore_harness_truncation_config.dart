// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_truncation_config_sliding_window.dart';
import 'agentcore_harness_truncation_config_summarization.dart';

class AgentcoreHarnessTruncationConfig {
  /// Sliding window truncation configuration. See `slidingWindow` Block below.
  final pulumi.Input<List<AgentcoreHarnessTruncationConfigSlidingWindow>> slidingWindows;
  /// Summarization truncation configuration. See `summarization` Block below.
  final pulumi.Input<List<AgentcoreHarnessTruncationConfigSummarization>> summarizations;

  /// Creates a new [AgentcoreHarnessTruncationConfig].
  /// [slidingWindows] Sliding window truncation configuration. See `slidingWindow` Block below.
  /// [summarizations] Summarization truncation configuration. See `summarization` Block below.
  const AgentcoreHarnessTruncationConfig({
    required this.slidingWindows,
    required this.summarizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slidingWindows': pulumi.Input.mapInputValue<List<AgentcoreHarnessTruncationConfigSlidingWindow>, List<Map<String, dynamic>>>(slidingWindows, (value) => pulumi.Input.encodeList<AgentcoreHarnessTruncationConfigSlidingWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'summarizations': pulumi.Input.mapInputValue<List<AgentcoreHarnessTruncationConfigSummarization>, List<Map<String, dynamic>>>(summarizations, (value) => pulumi.Input.encodeList<AgentcoreHarnessTruncationConfigSummarization, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessTruncationConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessTruncationConfig(
      slidingWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessTruncationConfigSlidingWindow>(map['slidingWindows']!, (value) => AgentcoreHarnessTruncationConfigSlidingWindow.fromMap((value as Map).cast<String, dynamic>()))),
      summarizations: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessTruncationConfigSummarization>(map['summarizations']!, (value) => AgentcoreHarnessTruncationConfigSummarization.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
