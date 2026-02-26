// ignore_for_file: unused_element, unnecessary_cast

import 'postal_address.dart';

/// Details required for a contact associated with a `Registration`.
class Contact {
  /// Email address of the contact.
  final String email;

  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String? faxNumber;

  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String phoneNumber;

  /// Postal address of the contact.
  final PostalAddress postalAddress;

  Contact({
    required this.email,
    this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    final faxNumberValue = faxNumber;
    if (faxNumberValue != null) {
      map['faxNumber'] = faxNumberValue;
    }
    map['phoneNumber'] = phoneNumber;
    map['postalAddress'] = postalAddress.toMap();
    return map;
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] == null ? null : map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress: PostalAddress.fromMap(
          (map['postalAddress'] as Map).cast<String, dynamic>()),
    );
  }
}
