// ignore_for_file: unused_element, unnecessary_cast

class SpaceOwnershipSettings {
  /// The user profile who is the owner of the private space.
  final String ownerUserProfileName;

  /// Creates a new [SpaceOwnershipSettings].
  /// [ownerUserProfileName] The user profile who is the owner of the private space.
  SpaceOwnershipSettings({
    required this.ownerUserProfileName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ownerUserProfileName'] = ownerUserProfileName;
    return map;
  }

  factory SpaceOwnershipSettings.fromMap(Map<String, dynamic> map) {
    return SpaceOwnershipSettings(
      ownerUserProfileName: map['ownerUserProfileName'] as String,
    );
  }
}
