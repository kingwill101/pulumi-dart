// ignore_for_file: unused_element, unnecessary_cast


class GetGtmInstancesInstanceAlertConfig {
  /// Whether to configure DingTalk notifications.
  final bool dingtalkNotice;
  /// Whether to configure mail notification.
  final bool emailNotice;
  /// The Alarm Event Type.
  final String noticeType;
  /// Whether to configure SMS notification.
  final bool smsNotice;

  /// Creates a new [GetGtmInstancesInstanceAlertConfig].
  /// [dingtalkNotice] Whether to configure DingTalk notifications.
  /// [emailNotice] Whether to configure mail notification.
  /// [noticeType] The Alarm Event Type.
  /// [smsNotice] Whether to configure SMS notification.
  GetGtmInstancesInstanceAlertConfig({
    required this.dingtalkNotice,
    required this.emailNotice,
    required this.noticeType,
    required this.smsNotice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dingtalkNotice': dingtalkNotice,
      'emailNotice': emailNotice,
      'noticeType': noticeType,
      'smsNotice': smsNotice,
    };
  }

  factory GetGtmInstancesInstanceAlertConfig.fromMap(Map<String, dynamic> map) {
    return GetGtmInstancesInstanceAlertConfig(
      dingtalkNotice: map['dingtalkNotice'] as bool,
      emailNotice: map['emailNotice'] as bool,
      noticeType: map['noticeType'] as String,
      smsNotice: map['smsNotice'] as bool,
    );
  }
}

