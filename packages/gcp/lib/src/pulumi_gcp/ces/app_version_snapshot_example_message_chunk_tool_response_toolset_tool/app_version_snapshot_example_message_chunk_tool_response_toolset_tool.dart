// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool {
  /// (Output)
  /// The tool ID to filter the tools to retrieve the schema for.
  final String? toolId;

  /// (Output)
  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? toolset;

  AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool({
    this.toolId,
    this.toolset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final toolIdValue = toolId;
    if (toolIdValue != null) {
      map['toolId'] = toolIdValue;
    }
    final toolsetValue = toolset;
    if (toolsetValue != null) {
      map['toolset'] = toolsetValue;
    }
    return map;
  }

  factory AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool(
      toolId: map['toolId'] == null ? null : map['toolId'] as String,
      toolset: map['toolset'] == null ? null : map['toolset'] as String,
    );
  }
}
