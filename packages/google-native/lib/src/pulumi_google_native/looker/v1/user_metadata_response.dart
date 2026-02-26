// ignore_for_file: unused_element, unnecessary_cast

/// Metadata about users for a Looker instance.
class UserMetadataResponse {
  /// Optional. The number of additional developer users the instance owner has purchased.
  final int additionalDeveloperUserCount;

  /// Optional. The number of additional standard users the instance owner has purchased.
  final int additionalStandardUserCount;

  /// Optional. The number of additional viewer users the instance owner has purchased.
  final int additionalViewerUserCount;

  UserMetadataResponse({
    required this.additionalDeveloperUserCount,
    required this.additionalStandardUserCount,
    required this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalDeveloperUserCount'] = additionalDeveloperUserCount;
    map['additionalStandardUserCount'] = additionalStandardUserCount;
    map['additionalViewerUserCount'] = additionalViewerUserCount;
    return map;
  }

  factory UserMetadataResponse.fromMap(Map<String, dynamic> map) {
    return UserMetadataResponse(
      additionalDeveloperUserCount: map['additionalDeveloperUserCount'] as int,
      additionalStandardUserCount: map['additionalStandardUserCount'] as int,
      additionalViewerUserCount: map['additionalViewerUserCount'] as int,
    );
  }
}
