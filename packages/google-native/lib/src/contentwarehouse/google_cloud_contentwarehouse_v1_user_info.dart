// ignore_for_file: unused_element, unnecessary_cast

/// The user information.
class GoogleCloudContentwarehouseV1UserInfo {
  /// The unique group identifications which the user is belong to. The format is "group:yyyy@example.com";
  final List<String>? groupIds;

  /// A unique user identification string, as determined by the client. The maximum number of allowed characters is 255. Allowed characters include numbers 0 to 9, uppercase and lowercase letters, and restricted special symbols (:, @, +, -, _, ~) The format is "user:xxxx@example.com";
  final String? id;

  /// Creates a new [GoogleCloudContentwarehouseV1UserInfo].
  /// [groupIds] The unique group identifications which the user is belong to. The format is "group:yyyy@example.com";
  /// [id] A unique user identification string, as determined by the client. The maximum number of allowed characters is 255. Allowed characters include numbers 0 to 9, uppercase and lowercase letters, and restricted special symbols (:, @, +, -, _, ~) The format is "user:xxxx@example.com";
  GoogleCloudContentwarehouseV1UserInfo({
    this.groupIds,
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupIdsValue = groupIds;
    if (groupIdsValue != null) {
      map['groupIds'] = groupIdsValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1UserInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1UserInfo(
      groupIds: map['groupIds'] == null
          ? null
          : (map['groupIds'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
