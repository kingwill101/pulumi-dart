// ignore_for_file: unused_element, unnecessary_cast

import 'postal_address_response2.dart';

/// Details required for a contact associated with a `Registration`.
class ContactResponse2 {
  /// Email address of the contact.
  final String email;

  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String faxNumber;

  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String phoneNumber;

  /// Postal address of the contact.
  final PostalAddressResponse2 postalAddress;

  ContactResponse2({
    required this.email,
    required this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['faxNumber'] = faxNumber;
    map['phoneNumber'] = phoneNumber;
    map['postalAddress'] = postalAddress.toMap();
    return map;
  }

  factory ContactResponse2.fromMap(Map<String, dynamic> map) {
    return ContactResponse2(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress: PostalAddressResponse2.fromMap(
          (map['postalAddress'] as Map).cast<String, dynamic>()),
    );
  }
}
