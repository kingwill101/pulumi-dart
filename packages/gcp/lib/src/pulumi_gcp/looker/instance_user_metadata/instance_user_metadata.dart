// ignore_for_file: unused_element, unnecessary_cast

class InstanceUserMetadata {
  /// Number of additional Developer Users to allocate to the Looker Instance.
  final int? additionalDeveloperUserCount;

  /// Number of additional Standard Users to allocate to the Looker Instance.
  final int? additionalStandardUserCount;

  /// Number of additional Viewer Users to allocate to the Looker Instance.
  final int? additionalViewerUserCount;

  InstanceUserMetadata({
    this.additionalDeveloperUserCount,
    this.additionalStandardUserCount,
    this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalDeveloperUserCountValue = additionalDeveloperUserCount;
    if (additionalDeveloperUserCountValue != null) {
      map['additionalDeveloperUserCount'] = additionalDeveloperUserCountValue;
    }
    final additionalStandardUserCountValue = additionalStandardUserCount;
    if (additionalStandardUserCountValue != null) {
      map['additionalStandardUserCount'] = additionalStandardUserCountValue;
    }
    final additionalViewerUserCountValue = additionalViewerUserCount;
    if (additionalViewerUserCountValue != null) {
      map['additionalViewerUserCount'] = additionalViewerUserCountValue;
    }
    return map;
  }

  factory InstanceUserMetadata.fromMap(Map<String, dynamic> map) {
    return InstanceUserMetadata(
      additionalDeveloperUserCount: map['additionalDeveloperUserCount'] == null
          ? null
          : map['additionalDeveloperUserCount'] as int,
      additionalStandardUserCount: map['additionalStandardUserCount'] == null
          ? null
          : map['additionalStandardUserCount'] as int,
      additionalViewerUserCount: map['additionalViewerUserCount'] == null
          ? null
          : map['additionalViewerUserCount'] as int,
    );
  }
}
