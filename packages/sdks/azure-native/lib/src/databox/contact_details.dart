// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_preference.dart';

/// Contact Details.
class ContactDetails {
  /// Contact name of the person.
  final String contactName;
  /// List of Email-ids to be notified about job progress.
  final List<String> emailList;
  /// Mobile number of the contact person.
  final String? mobile;
  /// Notification preference for a job stage.
  final List<NotificationPreference>? notificationPreference;
  /// Phone number of the contact person.
  final String phone;
  /// Phone extension number of the contact person.
  final String? phoneExtension;

  /// Creates a new [ContactDetails].
  /// [contactName] Contact name of the person.
  /// [emailList] List of Email-ids to be notified about job progress.
  /// [mobile] Mobile number of the contact person.
  /// [notificationPreference] Notification preference for a job stage.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  ContactDetails({
    required this.contactName,
    required this.emailList,
    this.mobile,
    this.notificationPreference,
    required this.phone,
    this.phoneExtension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'emailList': emailList,
      'mobile': ?mobile,
      'notificationPreference': ?notificationPreference == null ? null : pulumi.Input.encodeList<NotificationPreference, Map<String, dynamic>>(notificationPreference!, (value) => value.toMap()),
      'phone': phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactDetails.fromMap(Map<String, dynamic> map) {
    return ContactDetails(
      contactName: map['contactName'] as String,
      emailList: (map['emailList'] as List).cast<String>(),
      mobile: map['mobile'] == null ? null : map['mobile'] as String,
      notificationPreference: map['notificationPreference'] == null ? null : pulumi.Input.decodeList<NotificationPreference>(map['notificationPreference'], (value) => NotificationPreference.fromMap((value as Map).cast<String, dynamic>())),
      phone: map['phone'] as String,
      phoneExtension: map['phoneExtension'] == null ? null : map['phoneExtension'] as String,
    );
  }
}

