// ignore_for_file: unused_element, unnecessary_cast

import 'domain_default_space_settings_space_storage_settings_default_ebs_storage_settings.dart';

class DomainDefaultSpaceSettingsSpaceStorageSettings {
  /// The default EBS storage settings for a private space. See `default_ebs_storage_settings` Block below.
  final DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings?
      defaultEbsStorageSettings;

  /// Creates a new [DomainDefaultSpaceSettingsSpaceStorageSettings].
  /// [defaultEbsStorageSettings] The default EBS storage settings for a private space. See `default_ebs_storage_settings` Block below.
  DomainDefaultSpaceSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultEbsStorageSettingsValue = defaultEbsStorageSettings;
    if (defaultEbsStorageSettingsValue != null) {
      map['defaultEbsStorageSettings'] = defaultEbsStorageSettingsValue.toMap();
    }
    return map;
  }

  factory DomainDefaultSpaceSettingsSpaceStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsSpaceStorageSettings(
      defaultEbsStorageSettings: map['defaultEbsStorageSettings'] == null
          ? null
          : DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings
              .fromMap((map['defaultEbsStorageSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
