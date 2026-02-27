// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_profile_user_settings_custom_file_system_config_efs_file_system_config/user_profile_user_settings_custom_file_system_config_efs_file_system_config.dart';

class UserProfileUserSettingsCustomFileSystemConfig {
  /// The default EBS storage settings for a private space. See EFS File System Config below.
  final List<UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig>?
      efsFileSystemConfigs;

  UserProfileUserSettingsCustomFileSystemConfig({
    this.efsFileSystemConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final efsFileSystemConfigsValue = efsFileSystemConfigs;
    if (efsFileSystemConfigsValue != null) {
      map['efsFileSystemConfigs'] = pulumi.Input.encodeList<
              UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig,
              Map<String, dynamic>>(
          efsFileSystemConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserProfileUserSettingsCustomFileSystemConfig.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCustomFileSystemConfig(
      efsFileSystemConfigs: map['efsFileSystemConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig>(
              map['efsFileSystemConfigs'],
              (value) =>
                  UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
