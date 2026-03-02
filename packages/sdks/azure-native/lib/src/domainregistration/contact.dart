// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address.dart';

/// Contact information for domain registration. If 'Domain Privacy' option is not selected then the contact information is made publicly available through the Whois
/// directories as per ICANN requirements.
class Contact {
  /// Mailing address.
  final pulumi.Input<Address>? addressMailing;
  /// Email address.
  final pulumi.Input<String> email;
  /// Fax number.
  final pulumi.Input<String>? fax;
  /// Job title.
  final pulumi.Input<String>? jobTitle;
  /// First name.
  final pulumi.Input<String> nameFirst;
  /// Last name.
  final pulumi.Input<String> nameLast;
  /// Middle name.
  final pulumi.Input<String>? nameMiddle;
  /// Organization contact belongs to.
  final pulumi.Input<String>? organization;
  /// Phone number.
  final pulumi.Input<String> phone;

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
      'addressMailing': ?pulumi.Input.mapOptionalInputValue<Address, Map<String, dynamic>>(addressMailing, (value) => value.toMap()),
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
      addressMailing: map['addressMailing'] == null ? null : (Address.fromMap((map['addressMailing'] as Map).cast<String, dynamic>())).input(),
      email: (map['email'] as String).input(),
      fax: map['fax'] == null ? null : (map['fax'] as String).input(),
      jobTitle: map['jobTitle'] == null ? null : (map['jobTitle'] as String).input(),
      nameFirst: (map['nameFirst'] as String).input(),
      nameLast: (map['nameLast'] as String).input(),
      nameMiddle: map['nameMiddle'] == null ? null : (map['nameMiddle'] as String).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
      phone: (map['phone'] as String).input(),
    );
  }
}

