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
  const ContactInfoResponse({
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
      contactName: pulumi.Input.fromValue(map['contactName'] as String),
      mobile: (() { final guardedValue = map['mobile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: pulumi.Input.fromValue(map['phone'] as String),
      phoneExtension: (() { final guardedValue = map['phoneExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

