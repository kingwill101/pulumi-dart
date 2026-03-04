// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_custom_file_system_config_efs_file_system_config.dart';

class UserProfileUserSettingsCustomFileSystemConfig {
  /// The default EBS storage settings for a private space. See EFS File System Config below.
  final pulumi.Input<
    List<UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig>
  >?
  efsFileSystemConfigs;

  /// Creates a new [UserProfileUserSettingsCustomFileSystemConfig].
  /// [efsFileSystemConfigs] The default EBS storage settings for a private space. See EFS File System Config below.
  UserProfileUserSettingsCustomFileSystemConfig({this.efsFileSystemConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileSystemConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig
            >,
            List<Map<String, dynamic>>
          >(
            efsFileSystemConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory UserProfileUserSettingsCustomFileSystemConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsCustomFileSystemConfig(
      efsFileSystemConfigs: (() {
        final guardedValue = map['efsFileSystemConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig
          >(
            guardedValue,
            (value) =>
                UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
