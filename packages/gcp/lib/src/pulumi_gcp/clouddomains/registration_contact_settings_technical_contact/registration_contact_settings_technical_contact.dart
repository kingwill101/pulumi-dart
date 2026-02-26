// ignore_for_file: unused_element, unnecessary_cast

import '../registration_contact_settings_technical_contact_postal_address/registration_contact_settings_technical_contact_postal_address.dart';

class RegistrationContactSettingsTechnicalContact {
  /// Required. Email address of the contact.
  final String email;

  /// Fax number of the contact in international format. For example, "+1-800-555-0123".
  final String? faxNumber;

  /// Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  final String phoneNumber;

  /// Required. Postal address of the contact.
  /// Structure is documented below.
  final RegistrationContactSettingsTechnicalContactPostalAddress postalAddress;

  RegistrationContactSettingsTechnicalContact({
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

  factory RegistrationContactSettingsTechnicalContact.fromMap(
      Map<String, dynamic> map) {
    return RegistrationContactSettingsTechnicalContact(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] == null ? null : map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress:
          RegistrationContactSettingsTechnicalContactPostalAddress.fromMap(
              (map['postalAddress'] as Map).cast<String, dynamic>()),
    );
  }
}
