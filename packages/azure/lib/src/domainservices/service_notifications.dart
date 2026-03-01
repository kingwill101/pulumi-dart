// ignore_for_file: unused_element, unnecessary_cast


class ServiceNotifications {
  /// A list of additional email addresses to notify when there are alerts in the managed domain.
  final List<String>? additionalRecipients;
  /// Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain.
  final bool? notifyDcAdmins;
  /// Whether to notify all Global Administrators when there are alerts in the managed domain.
  final bool? notifyGlobalAdmins;

  /// Creates a new [ServiceNotifications].
  /// [additionalRecipients] A list of additional email addresses to notify when there are alerts in the managed domain.
  /// [notifyDcAdmins] Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain.
  /// [notifyGlobalAdmins] Whether to notify all Global Administrators when there are alerts in the managed domain.
  ServiceNotifications({
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

  factory ServiceNotifications.fromMap(Map<String, dynamic> map) {
    return ServiceNotifications(
      additionalRecipients: map['additionalRecipients'] == null ? null : (map['additionalRecipients'] as List).cast<String>(),
      notifyDcAdmins: map['notifyDcAdmins'] == null ? null : map['notifyDcAdmins'] as bool,
      notifyGlobalAdmins: map['notifyGlobalAdmins'] == null ? null : map['notifyGlobalAdmins'] as bool,
    );
  }
}

