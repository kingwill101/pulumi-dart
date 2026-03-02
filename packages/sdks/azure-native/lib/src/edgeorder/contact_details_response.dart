// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact Details.
class ContactDetailsResponse {
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

  /// Creates a new [ContactDetailsResponse].
  /// [contactName] Contact name of the person.
  /// [emailList] List of Email-ids to be notified about job progress.
  /// [mobile] Mobile number of the contact person.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  ContactDetailsResponse({
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

  factory ContactDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ContactDetailsResponse(
      contactName: map['contactName'] == null ? null : (map['contactName'] as String).input(),
      emailList: map['emailList'] == null ? null : ((map['emailList'] as List).cast<String>()).input(),
      mobile: map['mobile'] == null ? null : (map['mobile'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
      phoneExtension: map['phoneExtension'] == null ? null : (map['phoneExtension'] as String).input(),
    );
  }
}

