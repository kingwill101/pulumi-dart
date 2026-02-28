// ignore_for_file: unused_element, unnecessary_cast

import 'registration_contact_settings_registrant_contact_postal_address.dart';

class RegistrationContactSettingsRegistrantContact {
  /// Required. Email address of the contact.
  final String email;
  /// Fax number of the contact in international format. For example, "+1-800-555-0123".
  final String? faxNumber;
  /// Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  final String phoneNumber;
  /// Required. Postal address of the contact.
  /// Structure is documented below.
  final RegistrationContactSettingsRegistrantContactPostalAddress postalAddress;

  /// Creates a new [RegistrationContactSettingsRegistrantContact].
  /// [email] Required. Email address of the contact.
  /// [faxNumber] Fax number of the contact in international format. For example, "+1-800-555-0123".
  /// [phoneNumber] Required. Phone number of the contact in international format. For example, "+1-800-555-0123".
  /// [postalAddress] Required. Postal address of the contact.
  RegistrationContactSettingsRegistrantContact({
    required this.email,
    this.faxNumber,
    required this.phoneNumber,
    required this.postalAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'faxNumber': ?faxNumber,
      'phoneNumber': phoneNumber,
      'postalAddress': postalAddress.toMap(),
    };
  }

  factory RegistrationContactSettingsRegistrantContact.fromMap(Map<String, dynamic> map) {
    return RegistrationContactSettingsRegistrantContact(
      email: map['email'] as String,
      faxNumber: map['faxNumber'] == null ? null : map['faxNumber'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalAddress: RegistrationContactSettingsRegistrantContactPostalAddress.fromMap((map['postalAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

