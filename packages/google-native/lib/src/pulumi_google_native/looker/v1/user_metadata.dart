// ignore_for_file: unused_element, unnecessary_cast

/// Metadata about users for a Looker instance.
class UserMetadata {
  /// Optional. The number of additional developer users the instance owner has purchased.
  final int? additionalDeveloperUserCount;

  /// Optional. The number of additional standard users the instance owner has purchased.
  final int? additionalStandardUserCount;

  /// Optional. The number of additional viewer users the instance owner has purchased.
  final int? additionalViewerUserCount;

  UserMetadata({
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

  factory UserMetadata.fromMap(Map<String, dynamic> map) {
    return UserMetadata(
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
