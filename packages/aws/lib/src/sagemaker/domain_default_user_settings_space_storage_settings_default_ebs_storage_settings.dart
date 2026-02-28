// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  /// The default size of the EBS storage volume for a private space.
  final int defaultEbsVolumeSizeInGb;

  /// The maximum size of the EBS storage volume for a private space.
  final int maximumEbsVolumeSizeInGb;

  /// Creates a new [DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings].
  /// [defaultEbsVolumeSizeInGb] The default size of the EBS storage volume for a private space.
  /// [maximumEbsVolumeSizeInGb] The maximum size of the EBS storage volume for a private space.
  DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultEbsVolumeSizeInGb'] = defaultEbsVolumeSizeInGb;
    map['maximumEbsVolumeSizeInGb'] = maximumEbsVolumeSizeInGb;
    return map;
  }

  factory DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings(
      defaultEbsVolumeSizeInGb: map['defaultEbsVolumeSizeInGb'] as int,
      maximumEbsVolumeSizeInGb: map['maximumEbsVolumeSizeInGb'] as int,
    );
  }
}
