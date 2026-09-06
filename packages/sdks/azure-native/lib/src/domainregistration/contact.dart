// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address.dart';

/// Contact information for domain registration. If 'Domain Privacy' option is not selected then the contact information is made publicly available through the Whois
/// directories as per ICANN requirements.
class Contact {
  /// Mailing address.
  final pulumi.Input<Address?>? addressMailing;
  /// Email address.
  final pulumi.Input<String> email;
  /// Fax number.
  final pulumi.Input<String?>? fax;
  /// Job title.
  final pulumi.Input<String?>? jobTitle;
  /// First name.
  final pulumi.Input<String> nameFirst;
  /// Last name.
  final pulumi.Input<String> nameLast;
  /// Middle name.
  final pulumi.Input<String?>? nameMiddle;
  /// Organization contact belongs to.
  final pulumi.Input<String?>? organization;
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
  const Contact({
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
      addressMailing: (() { final guardedValue = map['addressMailing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Address.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: pulumi.Input.fromValue(map['email'] as String),
      fax: (() { final guardedValue = map['fax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobTitle: (() { final guardedValue = map['jobTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameFirst: pulumi.Input.fromValue(map['nameFirst'] as String),
      nameLast: pulumi.Input.fromValue(map['nameLast'] as String),
      nameMiddle: (() { final guardedValue = map['nameMiddle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: pulumi.Input.fromValue(map['phone'] as String),
    );
  }
}
