// ignore_for_file: unused_element, unnecessary_cast

import 'user_pool_admin_create_user_config_invite_message_template.dart';

class UserPoolAdminCreateUserConfig {
  /// Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app.
  final bool? allowAdminCreateUserOnly;

  /// Invite message template structure. Detailed below.
  final UserPoolAdminCreateUserConfigInviteMessageTemplate?
      inviteMessageTemplate;

  /// Creates a new [UserPoolAdminCreateUserConfig].
  /// [allowAdminCreateUserOnly] Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app.
  /// [inviteMessageTemplate] Invite message template structure. Detailed below.
  UserPoolAdminCreateUserConfig({
    this.allowAdminCreateUserOnly,
    this.inviteMessageTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAdminCreateUserOnlyValue = allowAdminCreateUserOnly;
    if (allowAdminCreateUserOnlyValue != null) {
      map['allowAdminCreateUserOnly'] = allowAdminCreateUserOnlyValue;
    }
    final inviteMessageTemplateValue = inviteMessageTemplate;
    if (inviteMessageTemplateValue != null) {
      map['inviteMessageTemplate'] = inviteMessageTemplateValue.toMap();
    }
    return map;
  }

  factory UserPoolAdminCreateUserConfig.fromMap(Map<String, dynamic> map) {
    return UserPoolAdminCreateUserConfig(
      allowAdminCreateUserOnly: map['allowAdminCreateUserOnly'] == null
          ? null
          : map['allowAdminCreateUserOnly'] as bool,
      inviteMessageTemplate: map['inviteMessageTemplate'] == null
          ? null
          : UserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap(
              (map['inviteMessageTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}
