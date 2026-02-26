// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_tool_version_tool/cx_tool_version_tool.dart';

/// The set of arguments for CxToolVersion.
class CxToolVersionArgs {
  /// The display name of the tool version.
  final Input<String> displayName;

  /// The tool to create a Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  final Input<String> parent;

  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  final Input<CxToolVersionTool> tool;

  CxToolVersionArgs({
    required this.displayName,
    required this.parent,
    required this.tool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['parent'] = parent;
    map['tool'] = Input.mapInputValue<CxToolVersionTool, Map<String, dynamic>>(
        tool, (value) => value.toMap());
    return map;
  }

  factory CxToolVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxToolVersionArgs(
      displayName: Input.asInput<String>(map['displayName']),
      parent: Input.asInput<String>(map['parent']),
      tool: Input.asInput<CxToolVersionTool>(map['tool']),
    );
  }
}
