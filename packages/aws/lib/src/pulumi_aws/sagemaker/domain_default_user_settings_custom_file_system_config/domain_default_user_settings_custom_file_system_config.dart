// ignore_for_file: unused_element, unnecessary_cast

import '../domain_default_user_settings_custom_file_system_config_efs_file_system_config/domain_default_user_settings_custom_file_system_config_efs_file_system_config.dart';

class DomainDefaultUserSettingsCustomFileSystemConfig {
  /// The default EBS storage settings for a private space. See `efs_file_system_config` Block below.
  final DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig?
      efsFileSystemConfig;

  DomainDefaultUserSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final efsFileSystemConfigValue = efsFileSystemConfig;
    if (efsFileSystemConfigValue != null) {
      map['efsFileSystemConfig'] = efsFileSystemConfigValue.toMap();
    }
    return map;
  }

  factory DomainDefaultUserSettingsCustomFileSystemConfig.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCustomFileSystemConfig(
      efsFileSystemConfig: map['efsFileSystemConfig'] == null
          ? null
          : DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig
              .fromMap(
                  (map['efsFileSystemConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
