// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSource.
class GetSourceResult {
  /// The timestamp when the source was created.
  final String createTime;

  /// Free-text description.
  final String description;

  /// User-friendly display name.
  final String displayName;

  /// The number of frames that were reported by the source and contained errors.
  final int errorFrameCount;

  /// If `true`, the source is managed by other service(s).
  final bool managed;

  /// The full name of the source.
  final String name;

  /// Number of frames that are still being processed.
  final int pendingFrameCount;

  /// The information confidence of the source. The higher the value, the higher the confidence.
  final int priority;

  /// The state of the source.
  final String state;

  /// Data source type.
  final String type;

  /// The timestamp when the source was last updated.
  final String updateTime;

  GetSourceResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.errorFrameCount,
    required this.managed,
    required this.name,
    required this.pendingFrameCount,
    required this.priority,
    required this.state,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['errorFrameCount'] = errorFrameCount;
    map['managed'] = managed;
    map['name'] = name;
    map['pendingFrameCount'] = pendingFrameCount;
    map['priority'] = priority;
    map['state'] = state;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSourceResult.fromMap(Map<String, dynamic> map) {
    return GetSourceResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      errorFrameCount: map['errorFrameCount'] as int,
      managed: map['managed'] as bool,
      name: map['name'] as String,
      pendingFrameCount: map['pendingFrameCount'] as int,
      priority: map['priority'] as int,
      state: map['state'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
