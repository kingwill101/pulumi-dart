// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact Info.
class ContactInfoResponse {
  /// Contact name of the person.
  final pulumi.Input<String> contactName;
  /// Mobile number of the contact person.
  final pulumi.Input<String>? mobile;
  /// Phone number of the contact person.
  final pulumi.Input<String> phone;
  /// Phone extension number of the contact person.
  final pulumi.Input<String>? phoneExtension;

  /// Creates a new [ContactInfoResponse].
  /// [contactName] Contact name of the person.
  /// [mobile] Mobile number of the contact person.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  ContactInfoResponse({
    required this.contactName,
    this.mobile,
    required this.phone,
    this.phoneExtension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'mobile': ?mobile,
      'phone': phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactInfoResponse.fromMap(Map<String, dynamic> map) {
    return ContactInfoResponse(
      contactName: (map['contactName'] as String).input(),
      mobile: map['mobile'] == null ? null : (map['mobile']! as String).input(),
      phone: (map['phone'] as String).input(),
      phoneExtension: map['phoneExtension'] == null ? null : (map['phoneExtension']! as String).input(),
    );
  }
}

