// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_custom_file_system_config_efs_file_system_config.dart';

class DomainDefaultSpaceSettingsCustomFileSystemConfig {
  /// The default EBS storage settings for a private space. See `efs_file_system_config` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig>? efsFileSystemConfig;

  /// Creates a new [DomainDefaultSpaceSettingsCustomFileSystemConfig].
  /// [efsFileSystemConfig] The default EBS storage settings for a private space. See `efs_file_system_config` Block below.
  const DomainDefaultSpaceSettingsCustomFileSystemConfig({
    this.efsFileSystemConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileSystemConfig': ?pulumi.Input.mapOptionalInputValue<DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig, Map<String, dynamic>>(efsFileSystemConfig, (value) => value.toMap()),
    };
  }

  factory DomainDefaultSpaceSettingsCustomFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsCustomFileSystemConfig(
      efsFileSystemConfig: (() { final guardedValue = map['efsFileSystemConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

