// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_preference.dart';

/// Contact Details.
class ContactDetails {
  /// Contact name of the person.
  final pulumi.Input<String> contactName;
  /// List of Email-ids to be notified about job progress.
  final pulumi.Input<List<String>> emailList;
  /// Mobile number of the contact person.
  final pulumi.Input<String?>? mobile;
  /// Notification preference for a job stage.
  final pulumi.Input<List<NotificationPreference>?>? notificationPreference;
  /// Phone number of the contact person.
  final pulumi.Input<String> phone;
  /// Phone extension number of the contact person.
  final pulumi.Input<String?>? phoneExtension;

  /// Creates a new [ContactDetails].
  /// [contactName] Contact name of the person.
  /// [emailList] List of Email-ids to be notified about job progress.
  /// [mobile] Mobile number of the contact person.
  /// [notificationPreference] Notification preference for a job stage.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  const ContactDetails({
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
      'notificationPreference': ?pulumi.Input.mapOptionalInputValue<List<NotificationPreference>, List<Map<String, dynamic>>>(notificationPreference, (value) => pulumi.Input.encodeList<NotificationPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'phone': phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactDetails.fromMap(Map<String, dynamic> map) {
    return ContactDetails(
      contactName: pulumi.Input.fromValue(map['contactName'] as String),
      emailList: pulumi.Input.fromValue((map['emailList'] as List).cast<String>()),
      mobile: (() { final guardedValue = map['mobile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationPreference: (() { final guardedValue = map['notificationPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPreference>(guardedValue, (value) => NotificationPreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      phone: pulumi.Input.fromValue(map['phone'] as String),
      phoneExtension: (() { final guardedValue = map['phoneExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
