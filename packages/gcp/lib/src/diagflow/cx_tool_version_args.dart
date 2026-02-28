// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool.dart';

/// {@template pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
/// The set of arguments for CxToolVersion.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_tool_version_cx_tool_version_args_doc}
class CxToolVersionArgs {
  /// The display name of the tool version.
  final pulumi.Input<String> displayName;

  /// The tool to create a Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  final pulumi.Input<String> parent;

  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionTool> tool;

  /// Creates a new [CxToolVersionArgs].
  /// [displayName] The display name of the tool version.
  /// [parent] The tool to create a Version for.
  /// [tool] Snapshot of the tool to be associated with this version.
  CxToolVersionArgs({
    required String displayName,
    required String parent,
    required CxToolVersionTool tool,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        parent = pulumi.Input.asInput<String>(parent),
        tool = pulumi.Input.asInput<CxToolVersionTool>(tool);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['parent'] = parent;
    map['tool'] =
        pulumi.Input.mapInputValue<CxToolVersionTool, Map<String, dynamic>>(
            tool, (value) => value.toMap());
    return map;
  }

  factory CxToolVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxToolVersionArgs(
      displayName: map['displayName'] as String,
      parent: map['parent'] as String,
      tool: CxToolVersionTool.fromMap(
          (map['tool'] as Map).cast<String, dynamic>()),
    );
  }
}
