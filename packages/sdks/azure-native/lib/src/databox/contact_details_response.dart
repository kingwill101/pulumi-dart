// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_preference_response.dart';

/// Contact Details.
class ContactDetailsResponse {
  /// Contact name of the person.
  final pulumi.Input<String> contactName;
  /// List of Email-ids to be notified about job progress.
  final pulumi.Input<List<String>> emailList;
  /// Mobile number of the contact person.
  final pulumi.Input<String>? mobile;
  /// Notification preference for a job stage.
  final pulumi.Input<List<NotificationPreferenceResponse>>? notificationPreference;
  /// Phone number of the contact person.
  final pulumi.Input<String> phone;
  /// Phone extension number of the contact person.
  final pulumi.Input<String>? phoneExtension;

  /// Creates a new [ContactDetailsResponse].
  /// [contactName] Contact name of the person.
  /// [emailList] List of Email-ids to be notified about job progress.
  /// [mobile] Mobile number of the contact person.
  /// [notificationPreference] Notification preference for a job stage.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  ContactDetailsResponse({
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
      'notificationPreference': ?pulumi.Input.mapOptionalInputValue<List<NotificationPreferenceResponse>, List<Map<String, dynamic>>>(notificationPreference, (value) => pulumi.Input.encodeList<NotificationPreferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'phone': phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ContactDetailsResponse(
      contactName: (map['contactName'] as String).input(),
      emailList: ((map['emailList'] as List).cast<String>()).input(),
      mobile: map['mobile'] == null ? null : (map['mobile'] as String).input(),
      notificationPreference: map['notificationPreference'] == null ? null : (pulumi.Input.decodeList<NotificationPreferenceResponse>(map['notificationPreference'], (value) => NotificationPreferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      phone: (map['phone'] as String).input(),
      phoneExtension: map['phoneExtension'] == null ? null : (map['phoneExtension'] as String).input(),
    );
  }
}

