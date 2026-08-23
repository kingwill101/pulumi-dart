// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_truncation_config.dart';

class AgentcoreHarnessTruncation {
  /// Strategy-specific configuration. See `truncation config` below.
  final pulumi.Input<List<AgentcoreHarnessTruncationConfig>> configs;
  /// Truncation strategy. Valid values: `slidingWindow`, `summarization`, `none`.
  final pulumi.Input<String> strategy;

  /// Creates a new [AgentcoreHarnessTruncation].
  /// [configs] Strategy-specific configuration. See `truncation config` below.
  /// [strategy] Truncation strategy. Valid values: `slidingWindow`, `summarization`, `none`.
  const AgentcoreHarnessTruncation({
    required this.configs,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.mapInputValue<List<AgentcoreHarnessTruncationConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<AgentcoreHarnessTruncationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strategy': strategy,
    };
  }

  factory AgentcoreHarnessTruncation.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessTruncation(
      configs: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessTruncationConfig>(map['configs']!, (value) => AgentcoreHarnessTruncationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
    );
  }
}
