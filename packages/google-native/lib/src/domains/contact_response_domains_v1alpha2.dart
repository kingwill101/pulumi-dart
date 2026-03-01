// ignore_for_file: unused_element, unnecessary_cast

import 'postal_address_response_domains_v1alpha2.dart';

/// Details required for a contact associated with a `Registration`.
class ContactResponseDomainsV1alpha2 {
  /// Email address of the contact.
  final String email;

  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String faxNumber;

  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String phoneNumber;

  /// Postal address of the contact.
  final PostalAddressResponseDomainsV1alpha2 postalAddress;

  /// Creates a new [ContactResponseDomainsV1alpha2].
  /// [email] Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [phoneNumber] Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  /// [postalAddress] Postal address of the contact.
  ContactResponseDomainsV1alpha2({
    required this.email,
    required this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'faxNumber': faxNumber,
      'phoneNumber': phoneNumber,
      'postalAddress': postalAddress.toMap(),
    };
  }

  factory ContactResponseDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return ContactResponseDomainsV1alpha2(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress: PostalAddressResponseDomainsV1alpha2.fromMap(
        (map['postalAddress'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
