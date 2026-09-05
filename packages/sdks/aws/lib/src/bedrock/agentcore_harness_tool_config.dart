// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_tool_config_agentcore_browser.dart';
import 'agentcore_harness_tool_config_agentcore_code_interpreter.dart';
import 'agentcore_harness_tool_config_agentcore_gateway.dart';
import 'agentcore_harness_tool_config_inline_function.dart';
import 'agentcore_harness_tool_config_remote_mcp.dart';

class AgentcoreHarnessToolConfig {
  /// AgentCore browser configuration. See `agentcoreBrowser` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigAgentcoreBrowser?>? agentcoreBrowser;
  /// AgentCore code interpreter configuration. See `agentcoreCodeInterpreter` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigAgentcoreCodeInterpreter?>? agentcoreCodeInterpreter;
  /// AgentCore gateway configuration. See `agentcoreGateway` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigAgentcoreGateway?>? agentcoreGateway;
  /// Inline function configuration. See `inlineFunction` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigInlineFunction?>? inlineFunction;
  /// Remote MCP server configuration. See `remoteMcp` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigRemoteMcp?>? remoteMcp;

  /// Creates a new [AgentcoreHarnessToolConfig].
  /// [agentcoreBrowser] AgentCore browser configuration. See `agentcoreBrowser` Block below.
  /// [agentcoreCodeInterpreter] AgentCore code interpreter configuration. See `agentcoreCodeInterpreter` Block below.
  /// [agentcoreGateway] AgentCore gateway configuration. See `agentcoreGateway` Block below.
  /// [inlineFunction] Inline function configuration. See `inlineFunction` Block below.
  /// [remoteMcp] Remote MCP server configuration. See `remoteMcp` Block below.
  const AgentcoreHarnessToolConfig({
    this.agentcoreBrowser,
    this.agentcoreCodeInterpreter,
    this.agentcoreGateway,
    this.inlineFunction,
    this.remoteMcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentcoreBrowser': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigAgentcoreBrowser, Map<String, dynamic>>(agentcoreBrowser, (value) => value.toMap()),
      'agentcoreCodeInterpreter': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigAgentcoreCodeInterpreter, Map<String, dynamic>>(agentcoreCodeInterpreter, (value) => value.toMap()),
      'agentcoreGateway': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigAgentcoreGateway, Map<String, dynamic>>(agentcoreGateway, (value) => value.toMap()),
      'inlineFunction': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigInlineFunction, Map<String, dynamic>>(inlineFunction, (value) => value.toMap()),
      'remoteMcp': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigRemoteMcp, Map<String, dynamic>>(remoteMcp, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessToolConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfig(
      agentcoreBrowser: (() { final guardedValue = map['agentcoreBrowser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigAgentcoreBrowser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentcoreCodeInterpreter: (() { final guardedValue = map['agentcoreCodeInterpreter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigAgentcoreCodeInterpreter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentcoreGateway: (() { final guardedValue = map['agentcoreGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigAgentcoreGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inlineFunction: (() { final guardedValue = map['inlineFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigInlineFunction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remoteMcp: (() { final guardedValue = map['remoteMcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigRemoteMcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
