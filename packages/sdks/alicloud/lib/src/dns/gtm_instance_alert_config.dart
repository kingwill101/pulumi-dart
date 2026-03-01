// ignore_for_file: unused_element, unnecessary_cast


class GtmInstanceAlertConfig {
  /// Whether to configure DingTalk notifications. Valid values: `true`, `false`.
  final bool? dingtalkNotice;
  /// Whether to configure mail notification. Valid values: `true`, `false`.
  final bool? emailNotice;
  /// The Alarm Event Type.
  /// - `ADDR_ALERT`: Address not available.
  /// - `ADDR_RESUME`: Address Recovery available.
  /// - `ADDR_POOL_GROUP_UNAVAILABLE`: Address pool collection not available.
  /// - `ADDR_POOL_GROUP_AVAILABLE`: Address pool collection recovery available.
  /// - `ACCESS_STRATEGY_POOL_GROUP_SWITCH`: Primary/standby address pool switch.
  /// - `MONITOR_NODE_IP_CHANGE`: Monitoring node IP address changes.
  final String? noticeType;
  /// Whether to configure SMS notification. Valid values: `true`, `false`.
  final bool? smsNotice;

  /// Creates a new [GtmInstanceAlertConfig].
  /// [dingtalkNotice] Whether to configure DingTalk notifications. Valid values: `true`, `false`.
  /// [emailNotice] Whether to configure mail notification. Valid values: `true`, `false`.
  /// [noticeType] The Alarm Event Type.
  /// [smsNotice] Whether to configure SMS notification. Valid values: `true`, `false`.
  GtmInstanceAlertConfig({
    this.dingtalkNotice,
    this.emailNotice,
    this.noticeType,
    this.smsNotice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dingtalkNotice': ?dingtalkNotice,
      'emailNotice': ?emailNotice,
      'noticeType': ?noticeType,
      'smsNotice': ?smsNotice,
    };
  }

  factory GtmInstanceAlertConfig.fromMap(Map<String, dynamic> map) {
    return GtmInstanceAlertConfig(
      dingtalkNotice: map['dingtalkNotice'] == null ? null : map['dingtalkNotice'] as bool,
      emailNotice: map['emailNotice'] == null ? null : map['emailNotice'] as bool,
      noticeType: map['noticeType'] == null ? null : map['noticeType'] as String,
      smsNotice: map['smsNotice'] == null ? null : map['smsNotice'] as bool,
    );
  }
}

