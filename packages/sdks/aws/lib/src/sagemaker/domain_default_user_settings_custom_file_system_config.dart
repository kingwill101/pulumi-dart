// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_custom_file_system_config_efs_file_system_config.dart';

class DomainDefaultUserSettingsCustomFileSystemConfig {
  /// The default EBS storage settings for a private space. See `efsFileSystemConfig` Block below.
  final pulumi.Input<DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig?>? efsFileSystemConfig;

  /// Creates a new [DomainDefaultUserSettingsCustomFileSystemConfig].
  /// [efsFileSystemConfig] The default EBS storage settings for a private space. See `efsFileSystemConfig` Block below.
  const DomainDefaultUserSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileSystemConfig': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig, Map<String, dynamic>>(efsFileSystemConfig, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsCustomFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCustomFileSystemConfig(
      efsFileSystemConfig: (() { final guardedValue = map['efsFileSystemConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
