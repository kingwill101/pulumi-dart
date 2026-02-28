// ignore_for_file: unused_element, unnecessary_cast

class ExampleMessageChunkToolCallToolsetTool {
  /// The tool ID to filter the tools to retrieve the schema for.
  final String? toolId;

  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String toolset;

  /// Creates a new [ExampleMessageChunkToolCallToolsetTool].
  /// [toolId] The tool ID to filter the tools to retrieve the schema for.
  /// [toolset] The resource name of the Toolset from which this tool is derived.
  ExampleMessageChunkToolCallToolsetTool({
    this.toolId,
    required this.toolset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final toolIdValue = toolId;
    if (toolIdValue != null) {
      map['toolId'] = toolIdValue;
    }
    map['toolset'] = toolset;
    return map;
  }

  factory ExampleMessageChunkToolCallToolsetTool.fromMap(
      Map<String, dynamic> map) {
    return ExampleMessageChunkToolCallToolsetTool(
      toolId: map['toolId'] == null ? null : map['toolId'] as String,
      toolset: map['toolset'] as String,
    );
  }
}
