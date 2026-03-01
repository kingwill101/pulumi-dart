// ignore_for_file: unused_element, unnecessary_cast


class ZoneUserInfo {
  /// The list of the region IDs.
  final List<String>? regionIds;
  /// The user ID belonging to the region is used for cross-account synchronization scenarios.
  final String? userId;

  /// Creates a new [ZoneUserInfo].
  /// [regionIds] The list of the region IDs.
  /// [userId] The user ID belonging to the region is used for cross-account synchronization scenarios.
  ZoneUserInfo({
    this.regionIds,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionIds': ?regionIds,
      'userId': ?userId,
    };
  }

  factory ZoneUserInfo.fromMap(Map<String, dynamic> map) {
    return ZoneUserInfo(
      regionIds: map['regionIds'] == null ? null : (map['regionIds'] as List).cast<String>(),
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

