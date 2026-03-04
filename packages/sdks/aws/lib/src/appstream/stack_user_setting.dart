// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackUserSetting {
  /// Action that is enabled or disabled.
  /// Valid values are `AUTO_TIME_ZONE_REDIRECTION`, `CLIPBOARD_COPY_FROM_LOCAL_DEVICE`, `CLIPBOARD_COPY_TO_LOCAL_DEVICE`, `DOMAIN_PASSWORD_SIGNIN`, `DOMAIN_SMART_CARD_SIGNIN`, `FILE_UPLOAD`, `FILE_DOWNLOAD`, or `PRINTING_TO_LOCAL_DEVICE`.
  final pulumi.Input<String> action;

  /// Whether the action is enabled or disabled.
  /// Valid values are `ENABLED` or `DISABLED`.
  final pulumi.Input<String> permission;

  /// Creates a new [StackUserSetting].
  /// [action] Action that is enabled or disabled.
  /// [permission] Whether the action is enabled or disabled.
  StackUserSetting({required this.action, required this.permission});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': action, 'permission': permission};
  }

  factory StackUserSetting.fromMap(Map<String, dynamic> map) {
    return StackUserSetting(
      action: pulumi.Input.fromValue(map['action'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}
