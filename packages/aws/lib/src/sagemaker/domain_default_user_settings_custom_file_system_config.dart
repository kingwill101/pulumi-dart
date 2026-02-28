// ignore_for_file: unused_element, unnecessary_cast

import 'domain_default_user_settings_custom_file_system_config_efs_file_system_config.dart';

class DomainDefaultUserSettingsCustomFileSystemConfig {
  /// The default EBS storage settings for a private space. See `efs_file_system_config` Block below.
  final DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig? efsFileSystemConfig;

  /// Creates a new [DomainDefaultUserSettingsCustomFileSystemConfig].
  /// [efsFileSystemConfig] The default EBS storage settings for a private space. See `efs_file_system_config` Block below.
  DomainDefaultUserSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileSystemConfig': ?efsFileSystemConfig == null ? null : efsFileSystemConfig!.toMap(),
    };
  }

  factory DomainDefaultUserSettingsCustomFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCustomFileSystemConfig(
      efsFileSystemConfig: map['efsFileSystemConfig'] == null ? null : DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap((map['efsFileSystemConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

