// ignore_for_file: unused_element, unnecessary_cast

import 'space_space_settings_space_storage_settings_ebs_storage_settings.dart';

class SpaceSpaceSettingsSpaceStorageSettings {
  /// A collection of EBS storage settings for a space. See `ebs_storage_settings` Block below.
  final SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings
      ebsStorageSettings;

  /// Creates a new [SpaceSpaceSettingsSpaceStorageSettings].
  /// [ebsStorageSettings] A collection of EBS storage settings for a space. See `ebs_storage_settings` Block below.
  SpaceSpaceSettingsSpaceStorageSettings({
    required this.ebsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ebsStorageSettings'] = ebsStorageSettings.toMap();
    return map;
  }

  factory SpaceSpaceSettingsSpaceStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsSpaceStorageSettings(
      ebsStorageSettings:
          SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings.fromMap(
              (map['ebsStorageSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
