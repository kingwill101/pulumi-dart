// ignore_for_file: unused_element, unnecessary_cast

import 'registration_contact_settings_admin_contact.dart';
import 'registration_contact_settings_registrant_contact.dart';
import 'registration_contact_settings_technical_contact.dart';

class RegistrationContactSettings {
  /// Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.
  /// Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
  /// avoid domain suspension.
  /// Structure is documented below.
  final RegistrationContactSettingsAdminContact adminContact;

  /// Required. Privacy setting for the contacts associated with the Registration.
  /// Values are PUBLIC_CONTACT_DATA, PRIVATE_CONTACT_DATA, and REDACTED_CONTACT_DATA
  final String privacy;

  /// Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.
  /// Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
  /// avoid domain suspension.
  /// Structure is documented below.
  final RegistrationContactSettingsRegistrantContact registrantContact;

  /// Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.
  /// Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
  /// avoid domain suspension.
  /// Structure is documented below.
  final RegistrationContactSettingsTechnicalContact technicalContact;

  /// Creates a new [RegistrationContactSettings].
  /// [adminContact] Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.
  /// [privacy] Required. Privacy setting for the contacts associated with the Registration.
  /// [registrantContact] Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.
  /// [technicalContact] Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.
  RegistrationContactSettings({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact': adminContact.toMap(),
      'privacy': privacy,
      'registrantContact': registrantContact.toMap(),
      'technicalContact': technicalContact.toMap(),
    };
  }

  factory RegistrationContactSettings.fromMap(Map<String, dynamic> map) {
    return RegistrationContactSettings(
      adminContact: RegistrationContactSettingsAdminContact.fromMap(
        (map['adminContact'] as Map).cast<String, dynamic>(),
      ),
      privacy: map['privacy'] as String,
      registrantContact: RegistrationContactSettingsRegistrantContact.fromMap(
        (map['registrantContact'] as Map).cast<String, dynamic>(),
      ),
      technicalContact: RegistrationContactSettingsTechnicalContact.fromMap(
        (map['technicalContact'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
