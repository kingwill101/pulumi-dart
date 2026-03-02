// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for notification
class NotificationSettings {
  /// The list of additional recipients
  final pulumi.Input<List<String>>? additionalRecipients;
  /// Should domain controller admins be notified
  final pulumi.Input<String>? notifyDcAdmins;
  /// Should global admins be notified
  final pulumi.Input<String>? notifyGlobalAdmins;

  /// Creates a new [NotificationSettings].
  /// [additionalRecipients] The list of additional recipients
  /// [notifyDcAdmins] Should domain controller admins be notified
  /// [notifyGlobalAdmins] Should global admins be notified
  NotificationSettings({
    this.additionalRecipients,
    this.notifyDcAdmins,
    this.notifyGlobalAdmins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': ?additionalRecipients,
      'notifyDcAdmins': ?notifyDcAdmins,
      'notifyGlobalAdmins': ?notifyGlobalAdmins,
    };
  }

  factory NotificationSettings.fromMap(Map<String, dynamic> map) {
    return NotificationSettings(
      additionalRecipients: map['additionalRecipients'] == null ? null : ((map['additionalRecipients'] as List).cast<String>()).input(),
      notifyDcAdmins: map['notifyDcAdmins'] == null ? null : (map['notifyDcAdmins'] as String).input(),
      notifyGlobalAdmins: map['notifyGlobalAdmins'] == null ? null : (map['notifyGlobalAdmins'] as String).input(),
    );
  }
}

