// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_agent.dart';
import 'app_version_snapshot_app.dart';
import 'app_version_snapshot_example.dart';
import 'app_version_snapshot_guardrail.dart';
import 'app_version_snapshot_tool.dart';
import 'app_version_snapshot_toolset.dart';

class AppVersionSnapshot {
  /// (Output)
  /// List of agents in the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAgent>? agents;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final List<AppVersionSnapshotApp>? apps;

  /// (Output)
  /// List of examples in the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotExample>? examples;

  /// (Output)
  /// List of guardrails for the app.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}`
  final List<AppVersionSnapshotGuardrail>? guardrails;

  /// (Output)
  /// List of available tools for the agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final List<AppVersionSnapshotTool>? tools;

  /// (Output)
  /// List of toolsets for the agent.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolset>? toolsets;

  /// Creates a new [AppVersionSnapshot].
  /// [agents] (Output)
  /// [apps] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [examples] (Output)
  /// [guardrails] (Output)
  /// [tools] (Output)
  /// [toolsets] (Output)
  AppVersionSnapshot({
    this.agents,
    this.apps,
    this.examples,
    this.guardrails,
    this.tools,
    this.toolsets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?agents == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotAgent,
              Map<String, dynamic>
            >(agents!, (value) => value.toMap()),
      'apps': ?apps == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotApp,
              Map<String, dynamic>
            >(apps!, (value) => value.toMap()),
      'examples': ?examples == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotExample,
              Map<String, dynamic>
            >(examples!, (value) => value.toMap()),
      'guardrails': ?guardrails == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotGuardrail,
              Map<String, dynamic>
            >(guardrails!, (value) => value.toMap()),
      'tools': ?tools == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotTool,
              Map<String, dynamic>
            >(tools!, (value) => value.toMap()),
      'toolsets': ?toolsets == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotToolset,
              Map<String, dynamic>
            >(toolsets!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshot.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshot(
      agents: map['agents'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotAgent>(
              map['agents'],
              (value) => AppVersionSnapshotAgent.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      apps: map['apps'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotApp>(
              map['apps'],
              (value) => AppVersionSnapshotApp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      examples: map['examples'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotExample>(
              map['examples'],
              (value) => AppVersionSnapshotExample.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      guardrails: map['guardrails'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotGuardrail>(
              map['guardrails'],
              (value) => AppVersionSnapshotGuardrail.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tools: map['tools'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotTool>(
              map['tools'],
              (value) => AppVersionSnapshotTool.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      toolsets: map['toolsets'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotToolset>(
              map['toolsets'],
              (value) => AppVersionSnapshotToolset.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
