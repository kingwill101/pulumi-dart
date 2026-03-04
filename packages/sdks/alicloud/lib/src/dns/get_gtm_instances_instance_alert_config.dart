// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGtmInstancesInstanceAlertConfig {
  /// Whether to configure DingTalk notifications.
  final pulumi.Input<bool> dingtalkNotice;

  /// Whether to configure mail notification.
  final pulumi.Input<bool> emailNotice;

  /// The Alarm Event Type.
  final pulumi.Input<String> noticeType;

  /// Whether to configure SMS notification.
  final pulumi.Input<bool> smsNotice;

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
      dingtalkNotice: pulumi.Input.fromValue(map['dingtalkNotice'] as bool),
      emailNotice: pulumi.Input.fromValue(map['emailNotice'] as bool),
      noticeType: pulumi.Input.fromValue(map['noticeType'] as String),
      smsNotice: pulumi.Input.fromValue(map['smsNotice'] as bool),
    );
  }
}
