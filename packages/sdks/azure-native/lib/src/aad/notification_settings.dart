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
      additionalRecipients: (() { final guardedValue = map['additionalRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notifyDcAdmins: (() { final guardedValue = map['notifyDcAdmins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyGlobalAdmins: (() { final guardedValue = map['notifyGlobalAdmins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

