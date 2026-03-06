// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsRStudioServerProAppSettings {
  /// Indicates whether the current user has access to the RStudioServerPro app. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? accessStatus;
  /// The level of permissions that the user has within the RStudioServerPro app. This value defaults to `R_STUDIO_USER`. The `R_STUDIO_ADMIN` value allows the user access to the RStudio Administrative Dashboard. Valid values are `R_STUDIO_USER` and `R_STUDIO_ADMIN`.
  final pulumi.Input<String>? userGroup;

  /// Creates a new [UserProfileUserSettingsRStudioServerProAppSettings].
  /// [accessStatus] Indicates whether the current user has access to the RStudioServerPro app. Valid values are `ENABLED` and `DISABLED`.
  /// [userGroup] The level of permissions that the user has within the RStudioServerPro app. This value defaults to `R_STUDIO_USER`. The `R_STUDIO_ADMIN` value allows the user access to the RStudio Administrative Dashboard. Valid values are `R_STUDIO_USER` and `R_STUDIO_ADMIN`.
  const UserProfileUserSettingsRStudioServerProAppSettings({
    this.accessStatus,
    this.userGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessStatus': ?accessStatus,
      'userGroup': ?userGroup,
    };
  }

  factory UserProfileUserSettingsRStudioServerProAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsRStudioServerProAppSettings(
      accessStatus: (() { final guardedValue = map['accessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroup: (() { final guardedValue = map['userGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

