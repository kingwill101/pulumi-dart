// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings {
  /// The default size of the EBS storage volume for a private space.
  final int defaultEbsVolumeSizeInGb;

  /// The maximum size of the EBS storage volume for a private space.
  final int maximumEbsVolumeSizeInGb;

  /// Creates a new [DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings].
  /// [defaultEbsVolumeSizeInGb] The default size of the EBS storage volume for a private space.
  /// [maximumEbsVolumeSizeInGb] The maximum size of the EBS storage volume for a private space.
  DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings({
    required this.defaultEbsVolumeSizeInGb,
    required this.maximumEbsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsVolumeSizeInGb': defaultEbsVolumeSizeInGb,
      'maximumEbsVolumeSizeInGb': maximumEbsVolumeSizeInGb,
    };
  }

  factory DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings(
      defaultEbsVolumeSizeInGb: map['defaultEbsVolumeSizeInGb'] as int,
      maximumEbsVolumeSizeInGb: map['maximumEbsVolumeSizeInGb'] as int,
    );
  }
}
