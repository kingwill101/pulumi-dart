// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  /// The default size of the EBS storage volume for a private space.
  final int defaultEbsVolumeSizeInGb;

  /// The maximum size of the EBS storage volume for a private space.
  final int maximumEbsVolumeSizeInGb;

  UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultEbsVolumeSizeInGb'] = defaultEbsVolumeSizeInGb;
    map['maximumEbsVolumeSizeInGb'] = maximumEbsVolumeSizeInGb;
    return map;
  }

  factory UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings(
      defaultEbsVolumeSizeInGb: map['defaultEbsVolumeSizeInGb'] as int,
      maximumEbsVolumeSizeInGb: map['maximumEbsVolumeSizeInGb'] as int,
    );
  }
}
