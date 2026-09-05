// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_tool_config.dart';

class AgentcoreHarnessTool {
  /// Tool-specific configuration. See `tool config` below.
  final pulumi.Input<AgentcoreHarnessToolConfig?>? config;
  /// Name of the tool.
  final pulumi.Input<String?>? name;
  /// Type of tool. Valid values: `remoteMcp`, `agentcoreBrowser`, `agentcoreGateway`, `inlineFunction`, `agentcoreCodeInterpreter`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentcoreHarnessTool].
  /// [config] Tool-specific configuration. See `tool config` below.
  /// [name] Name of the tool.
  /// [type] Type of tool. Valid values: `remoteMcp`, `agentcoreBrowser`, `agentcoreGateway`, `inlineFunction`, `agentcoreCodeInterpreter`.
  const AgentcoreHarnessTool({
    this.config,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'type': type,
    };
  }

  factory AgentcoreHarnessTool.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessTool(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
