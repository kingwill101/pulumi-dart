// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAgentToolset {
  /// (Output)
  /// The tools IDs to filter the toolset.
  final List<String>? toolIds;

  /// (Output)
  /// The resource name of the Toolset from which this tool is derived.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? toolset;

  AppVersionSnapshotAgentToolset({
    this.toolIds,
    this.toolset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final toolIdsValue = toolIds;
    if (toolIdsValue != null) {
      map['toolIds'] = toolIdsValue;
    }
    final toolsetValue = toolset;
    if (toolsetValue != null) {
      map['toolset'] = toolsetValue;
    }
    return map;
  }

  factory AppVersionSnapshotAgentToolset.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentToolset(
      toolIds: map['toolIds'] == null
          ? null
          : (map['toolIds'] as List).cast<String>(),
      toolset: map['toolset'] == null ? null : map['toolset'] as String,
    );
  }
}
