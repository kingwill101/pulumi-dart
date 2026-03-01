// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings {
  /// The size of an EBS storage volume for a space.
  final int ebsVolumeSizeInGb;

  /// Creates a new [SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings].
  /// [ebsVolumeSizeInGb] The size of an EBS storage volume for a space.
  SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings({
    required this.ebsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ebsVolumeSizeInGb': ebsVolumeSizeInGb};
  }

  factory SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings(
      ebsVolumeSizeInGb: map['ebsVolumeSizeInGb'] as int,
    );
  }
}
