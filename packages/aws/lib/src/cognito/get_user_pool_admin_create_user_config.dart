// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_admin_create_user_config_invite_message_template.dart';

class GetUserPoolAdminCreateUserConfig {
  /// - Whether only admins can create users.
  final bool allowAdminCreateUserOnly;
  final List<GetUserPoolAdminCreateUserConfigInviteMessageTemplate>
      inviteMessageTemplates;

  /// - Number of days an unconfirmed user account remains valid.
  /// * invite_message_template - Templates for invitation messages.
  final int unusedAccountValidityDays;

  /// Creates a new [GetUserPoolAdminCreateUserConfig].
  /// [allowAdminCreateUserOnly] - Whether only admins can create users.
  /// [inviteMessageTemplates] Required.
  /// [unusedAccountValidityDays] - Number of days an unconfirmed user account remains valid.
  GetUserPoolAdminCreateUserConfig({
    required this.allowAdminCreateUserOnly,
    required this.inviteMessageTemplates,
    required this.unusedAccountValidityDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowAdminCreateUserOnly'] = allowAdminCreateUserOnly;
    map['inviteMessageTemplates'] = pulumi.Input.encodeList<
        GetUserPoolAdminCreateUserConfigInviteMessageTemplate,
        Map<String, dynamic>>(inviteMessageTemplates, (value) => value.toMap());
    map['unusedAccountValidityDays'] = unusedAccountValidityDays;
    return map;
  }

  factory GetUserPoolAdminCreateUserConfig.fromMap(Map<String, dynamic> map) {
    return GetUserPoolAdminCreateUserConfig(
      allowAdminCreateUserOnly: map['allowAdminCreateUserOnly'] as bool,
      inviteMessageTemplates: pulumi.Input.decodeList<
              GetUserPoolAdminCreateUserConfigInviteMessageTemplate>(
          map['inviteMessageTemplates'],
          (value) =>
              GetUserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      unusedAccountValidityDays: map['unusedAccountValidityDays'] as int,
    );
  }
}
