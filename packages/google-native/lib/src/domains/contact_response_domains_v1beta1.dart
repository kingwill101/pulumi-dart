// ignore_for_file: unused_element, unnecessary_cast

import 'postal_address_response_domains_v1beta1.dart';

/// Details required for a contact associated with a `Registration`.
class ContactResponseDomainsV1beta1 {
  /// Email address of the contact.
  final String email;

  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String faxNumber;

  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String phoneNumber;

  /// Postal address of the contact.
  final PostalAddressResponseDomainsV1beta1 postalAddress;

  /// Creates a new [ContactResponseDomainsV1beta1].
  /// [email] Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [phoneNumber] Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [postalAddress] Postal address of the contact.
  ContactResponseDomainsV1beta1({
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

  factory ContactResponseDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return ContactResponseDomainsV1beta1(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress: PostalAddressResponseDomainsV1beta1.fromMap(
          (map['postalAddress'] as Map).cast<String, dynamic>()),
    );
  }
}
