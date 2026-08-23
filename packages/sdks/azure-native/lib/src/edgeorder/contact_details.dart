// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact Details.
class ContactDetails {
  /// Contact name of the person.
  final pulumi.Input<String>? contactName;
  /// List of Email-ids to be notified about job progress.
  final pulumi.Input<List<String>>? emailList;
  /// Mobile number of the contact person.
  final pulumi.Input<String>? mobile;
  /// Phone number of the contact person.
  final pulumi.Input<String>? phone;
  /// Phone extension number of the contact person.
  final pulumi.Input<String>? phoneExtension;

  /// Creates a new [ContactDetails].
  /// [contactName] Contact name of the person.
  /// [emailList] List of Email-ids to be notified about job progress.
  /// [mobile] Mobile number of the contact person.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  const ContactDetails({
    this.contactName,
    this.emailList,
    this.mobile,
    this.phone,
    this.phoneExtension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': ?contactName,
      'emailList': ?emailList,
      'mobile': ?mobile,
      'phone': ?phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactDetails.fromMap(Map<String, dynamic> map) {
    return ContactDetails(
      contactName: (() { final guardedValue = map['contactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mobile: (() { final guardedValue = map['mobile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneExtension: (() { final guardedValue = map['phoneExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
