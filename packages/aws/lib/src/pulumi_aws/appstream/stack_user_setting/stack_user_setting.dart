// ignore_for_file: unused_element, unnecessary_cast

class StackUserSetting {
  /// Action that is enabled or disabled.
  /// Valid values are `AUTO_TIME_ZONE_REDIRECTION`, `CLIPBOARD_COPY_FROM_LOCAL_DEVICE`, `CLIPBOARD_COPY_TO_LOCAL_DEVICE`, `DOMAIN_PASSWORD_SIGNIN`, `DOMAIN_SMART_CARD_SIGNIN`, `FILE_UPLOAD`, `FILE_DOWNLOAD`, or `PRINTING_TO_LOCAL_DEVICE`.
  final String action;

  /// Whether the action is enabled or disabled.
  /// Valid values are `ENABLED` or `DISABLED`.
  final String permission;

  StackUserSetting({
    required this.action,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['permission'] = permission;
    return map;
  }

  factory StackUserSetting.fromMap(Map<String, dynamic> map) {
    return StackUserSetting(
      action: map['action'] as String,
      permission: map['permission'] as String,
    );
  }
}
