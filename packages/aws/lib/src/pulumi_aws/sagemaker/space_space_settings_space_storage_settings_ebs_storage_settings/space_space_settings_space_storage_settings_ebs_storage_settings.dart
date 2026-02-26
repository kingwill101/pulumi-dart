// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings {
  /// The size of an EBS storage volume for a space.
  final int ebsVolumeSizeInGb;

  SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings({
    required this.ebsVolumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ebsVolumeSizeInGb'] = ebsVolumeSizeInGb;
    return map;
  }

  factory SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings(
      ebsVolumeSizeInGb: map['ebsVolumeSizeInGb'] as int,
    );
  }
}
