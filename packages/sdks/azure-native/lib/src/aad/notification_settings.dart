// ignore_for_file: unused_element, unnecessary_cast


/// Settings for notification
class NotificationSettings {
  /// The list of additional recipients
  final List<String>? additionalRecipients;
  /// Should domain controller admins be notified
  final String? notifyDcAdmins;
  /// Should global admins be notified
  final String? notifyGlobalAdmins;

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
      additionalRecipients: map['additionalRecipients'] == null ? null : (map['additionalRecipients'] as List).cast<String>(),
      notifyDcAdmins: map['notifyDcAdmins'] == null ? null : map['notifyDcAdmins'] as String,
      notifyGlobalAdmins: map['notifyGlobalAdmins'] == null ? null : map['notifyGlobalAdmins'] as String,
    );
  }
}

