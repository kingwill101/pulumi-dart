// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_admin_create_user_config_invite_message_template.dart';

class UserPoolAdminCreateUserConfig {
  /// Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app.
  final pulumi.Input<bool>? allowAdminCreateUserOnly;
  /// Invite message template structure. Detailed below.
  final pulumi.Input<UserPoolAdminCreateUserConfigInviteMessageTemplate>? inviteMessageTemplate;

  /// Creates a new [UserPoolAdminCreateUserConfig].
  /// [allowAdminCreateUserOnly] Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app.
  /// [inviteMessageTemplate] Invite message template structure. Detailed below.
  UserPoolAdminCreateUserConfig({
    this.allowAdminCreateUserOnly,
    this.inviteMessageTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAdminCreateUserOnly': ?allowAdminCreateUserOnly,
      'inviteMessageTemplate': ?pulumi.Input.mapOptionalInputValue<UserPoolAdminCreateUserConfigInviteMessageTemplate, Map<String, dynamic>>(inviteMessageTemplate, (value) => value.toMap()),
    };
  }

  factory UserPoolAdminCreateUserConfig.fromMap(Map<String, dynamic> map) {
    return UserPoolAdminCreateUserConfig(
      allowAdminCreateUserOnly: (() { final guardedValue = map['allowAdminCreateUserOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inviteMessageTemplate: (() { final guardedValue = map['inviteMessageTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

