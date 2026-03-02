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
      allowAdminCreateUserOnly: map['allowAdminCreateUserOnly'] == null ? null : ((map['allowAdminCreateUserOnly'] as bool).input()).input(),
      inviteMessageTemplate: map['inviteMessageTemplate'] == null ? null : ((UserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap((map['inviteMessageTemplate']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

