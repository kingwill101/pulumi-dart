// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  /// The default size of the EBS storage volume for a private space.
  final int defaultEbsVolumeSizeInGb;

  /// The maximum size of the EBS storage volume for a private space.
  final int maximumEbsVolumeSizeInGb;

  /// Creates a new [UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings].
  /// [defaultEbsVolumeSizeInGb] The default size of the EBS storage volume for a private space.
  /// [maximumEbsVolumeSizeInGb] The maximum size of the EBS storage volume for a private space.
  UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsVolumeSizeInGb': defaultEbsVolumeSizeInGb,
      'maximumEbsVolumeSizeInGb': maximumEbsVolumeSizeInGb,
    };
  }

  factory UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings(
      defaultEbsVolumeSizeInGb: map['defaultEbsVolumeSizeInGb'] as int,
      maximumEbsVolumeSizeInGb: map['maximumEbsVolumeSizeInGb'] as int,
    );
  }
}
