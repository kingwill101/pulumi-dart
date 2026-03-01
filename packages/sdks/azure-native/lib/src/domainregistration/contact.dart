// ignore_for_file: unused_element, unnecessary_cast

import 'address.dart';

/// Contact information for domain registration. If 'Domain Privacy' option is not selected then the contact information is made publicly available through the Whois
/// directories as per ICANN requirements.
class Contact {
  /// Mailing address.
  final Address? addressMailing;
  /// Email address.
  final String email;
  /// Fax number.
  final String? fax;
  /// Job title.
  final String? jobTitle;
  /// First name.
  final String nameFirst;
  /// Last name.
  final String nameLast;
  /// Middle name.
  final String? nameMiddle;
  /// Organization contact belongs to.
  final String? organization;
  /// Phone number.
  final String phone;

  /// Creates a new [Contact].
  /// [addressMailing] Mailing address.
  /// [email] Email address.
  /// [fax] Fax number.
  /// [jobTitle] Job title.
  /// [nameFirst] First name.
  /// [nameLast] Last name.
  /// [nameMiddle] Middle name.
  /// [organization] Organization contact belongs to.
  /// [phone] Phone number.
  Contact({
    this.addressMailing,
    required this.email,
    this.fax,
    this.jobTitle,
    required this.nameFirst,
    required this.nameLast,
    this.nameMiddle,
    this.organization,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressMailing': ?addressMailing == null ? null : addressMailing!.toMap(),
      'email': email,
      'fax': ?fax,
      'jobTitle': ?jobTitle,
      'nameFirst': nameFirst,
      'nameLast': nameLast,
      'nameMiddle': ?nameMiddle,
      'organization': ?organization,
      'phone': phone,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      addressMailing: map['addressMailing'] == null ? null : Address.fromMap((map['addressMailing'] as Map).cast<String, dynamic>()),
      email: map['email'] as String,
      fax: map['fax'] == null ? null : map['fax'] as String,
      jobTitle: map['jobTitle'] == null ? null : map['jobTitle'] as String,
      nameFirst: map['nameFirst'] as String,
      nameLast: map['nameLast'] as String,
      nameMiddle: map['nameMiddle'] == null ? null : map['nameMiddle'] as String,
      organization: map['organization'] == null ? null : map['organization'] as String,
      phone: map['phone'] as String,
    );
  }
}

