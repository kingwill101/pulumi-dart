// ignore_for_file: unused_element, unnecessary_cast

import 'postal_address_domains_v1beta1.dart';

/// Details required for a contact associated with a `Registration`.
class ContactDomainsV1beta1 {
  /// Email address of the contact.
  final String email;

  /// Fax number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String? faxNumber;

  /// Phone number of the contact in international format. For example, `"+1-800-555-0123"`.
  final String phoneNumber;

  /// Postal address of the contact.
  final PostalAddressDomainsV1beta1 postalAddress;

  ContactDomainsV1beta1({
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

  factory ContactDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return ContactDomainsV1beta1(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] == null ? null : map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress: PostalAddressDomainsV1beta1.fromMap(
          (map['postalAddress'] as Map).cast<String, dynamic>()),
    );
  }
}
