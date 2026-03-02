// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_code_editor_app_settings_app_lifecycle_management_idle_settings.dart';

class UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement {
  /// Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  final pulumi.Input<UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings>? idleSettings;

  /// Creates a new [UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement].
  /// [idleSettings] Settings related to idle shutdown of Studio applications. see `idle_settings` Block below.
  UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement({
    this.idleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings, Map<String, dynamic>>(idleSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagement(
      idleSettings: map['idleSettings'] == null ? null : (UserProfileUserSettingsCodeEditorAppSettingsAppLifecycleManagementIdleSettings.fromMap((map['idleSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

