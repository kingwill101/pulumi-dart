// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_admin_create_user_config_invite_message_template.dart';

class GetUserPoolAdminCreateUserConfig {
  /// - Whether only admins can create users.
  final pulumi.Input<bool> allowAdminCreateUserOnly;
  final pulumi.Input<List<GetUserPoolAdminCreateUserConfigInviteMessageTemplate>> inviteMessageTemplates;
  /// - Number of days an unconfirmed user account remains valid.
  /// * invite_message_template - Templates for invitation messages.
  final pulumi.Input<int> unusedAccountValidityDays;

  /// Creates a new [GetUserPoolAdminCreateUserConfig].
  /// [allowAdminCreateUserOnly] - Whether only admins can create users.
  /// [inviteMessageTemplates] Required.
  /// [unusedAccountValidityDays] - Number of days an unconfirmed user account remains valid.
  const GetUserPoolAdminCreateUserConfig({
    required this.allowAdminCreateUserOnly,
    required this.inviteMessageTemplates,
    required this.unusedAccountValidityDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAdminCreateUserOnly': allowAdminCreateUserOnly,
      'inviteMessageTemplates': pulumi.Input.mapInputValue<List<GetUserPoolAdminCreateUserConfigInviteMessageTemplate>, List<Map<String, dynamic>>>(inviteMessageTemplates, (value) => pulumi.Input.encodeList<GetUserPoolAdminCreateUserConfigInviteMessageTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unusedAccountValidityDays': unusedAccountValidityDays,
    };
  }

  factory GetUserPoolAdminCreateUserConfig.fromMap(Map<String, dynamic> map) {
    return GetUserPoolAdminCreateUserConfig(
      allowAdminCreateUserOnly: pulumi.Input.fromValue(map['allowAdminCreateUserOnly'] as bool),
      inviteMessageTemplates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserPoolAdminCreateUserConfigInviteMessageTemplate>(map['inviteMessageTemplates']!, (value) => GetUserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      unusedAccountValidityDays: pulumi.Input.fromValue((map['unusedAccountValidityDays'] as num).toInt()),
    );
  }
}
