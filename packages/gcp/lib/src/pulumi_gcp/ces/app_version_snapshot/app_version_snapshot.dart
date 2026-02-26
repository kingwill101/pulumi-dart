// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_agent/app_version_snapshot_agent.dart';
import '../app_version_snapshot_app/app_version_snapshot_app.dart';
import '../app_version_snapshot_example/app_version_snapshot_example.dart';
import '../app_version_snapshot_guardrail/app_version_snapshot_guardrail.dart';
import '../app_version_snapshot_tool/app_version_snapshot_tool.dart';
import '../app_version_snapshot_toolset/app_version_snapshot_toolset.dart';

class AppVersionSnapshot {
  /// (Output)
  /// List of agents in the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAgent>? agents;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
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

  AppVersionSnapshot({
    this.agents,
    this.apps,
    this.examples,
    this.guardrails,
    this.tools,
    this.toolsets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentsValue = agents;
    if (agentsValue != null) {
      map['agents'] =
          Input.encodeList<AppVersionSnapshotAgent, Map<String, dynamic>>(
              agentsValue, (value) => value.toMap());
    }
    final appsValue = apps;
    if (appsValue != null) {
      map['apps'] =
          Input.encodeList<AppVersionSnapshotApp, Map<String, dynamic>>(
              appsValue, (value) => value.toMap());
    }
    final examplesValue = examples;
    if (examplesValue != null) {
      map['examples'] =
          Input.encodeList<AppVersionSnapshotExample, Map<String, dynamic>>(
              examplesValue, (value) => value.toMap());
    }
    final guardrailsValue = guardrails;
    if (guardrailsValue != null) {
      map['guardrails'] =
          Input.encodeList<AppVersionSnapshotGuardrail, Map<String, dynamic>>(
              guardrailsValue, (value) => value.toMap());
    }
    final toolsValue = tools;
    if (toolsValue != null) {
      map['tools'] =
          Input.encodeList<AppVersionSnapshotTool, Map<String, dynamic>>(
              toolsValue, (value) => value.toMap());
    }
    final toolsetsValue = toolsets;
    if (toolsetsValue != null) {
      map['toolsets'] =
          Input.encodeList<AppVersionSnapshotToolset, Map<String, dynamic>>(
              toolsetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshot.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshot(
      agents: map['agents'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotAgent>(
              map['agents'],
              (value) => AppVersionSnapshotAgent.fromMap(
                  (value as Map).cast<String, dynamic>())),
      apps: map['apps'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotApp>(
              map['apps'],
              (value) => AppVersionSnapshotApp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      examples: map['examples'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotExample>(
              map['examples'],
              (value) => AppVersionSnapshotExample.fromMap(
                  (value as Map).cast<String, dynamic>())),
      guardrails: map['guardrails'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotGuardrail>(
              map['guardrails'],
              (value) => AppVersionSnapshotGuardrail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tools: map['tools'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotTool>(
              map['tools'],
              (value) => AppVersionSnapshotTool.fromMap(
                  (value as Map).cast<String, dynamic>())),
      toolsets: map['toolsets'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotToolset>(
              map['toolsets'],
              (value) => AppVersionSnapshotToolset.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
