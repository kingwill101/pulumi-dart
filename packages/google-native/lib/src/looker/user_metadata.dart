// ignore_for_file: unused_element, unnecessary_cast

/// Metadata about users for a Looker instance.
class UserMetadata {
  /// Optional. The number of additional developer users the instance owner has purchased.
  final int? additionalDeveloperUserCount;

  /// Optional. The number of additional standard users the instance owner has purchased.
  final int? additionalStandardUserCount;

  /// Optional. The number of additional viewer users the instance owner has purchased.
  final int? additionalViewerUserCount;

  /// Creates a new [UserMetadata].
  /// [additionalDeveloperUserCount] Optional. The number of additional developer users the instance owner has purchased.
  /// [additionalStandardUserCount] Optional. The number of additional standard users the instance owner has purchased.
  /// [additionalViewerUserCount] Optional. The number of additional viewer users the instance owner has purchased.
  UserMetadata({
    this.additionalDeveloperUserCount,
    this.additionalStandardUserCount,
    this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDeveloperUserCount': ?additionalDeveloperUserCount,
      'additionalStandardUserCount': ?additionalStandardUserCount,
      'additionalViewerUserCount': ?additionalViewerUserCount,
    };
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
