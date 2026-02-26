// ignore_for_file: unused_element, unnecessary_cast

import 'contact2.dart';
import 'contact_settings_privacy2.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettings2 {
  /// The administrative contact for the `Registration`.
  final Contact2 adminContact;

  /// Privacy setting for the contacts associated with the `Registration`.
  final ContactSettingsPrivacy2 privacy;

  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final Contact2 registrantContact;

  /// The technical contact for the `Registration`.
  final Contact2 technicalContact;

  ContactSettings2({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminContact'] = adminContact.toMap();
    map['privacy'] = privacy.value;
    map['registrantContact'] = registrantContact.toMap();
    map['technicalContact'] = technicalContact.toMap();
    return map;
  }

  factory ContactSettings2.fromMap(Map<String, dynamic> map) {
    return ContactSettings2(
      adminContact: Contact2.fromMap(
          (map['adminContact'] as Map).cast<String, dynamic>()),
      privacy: ContactSettingsPrivacy2.fromValue(map['privacy'] as String),
      registrantContact: Contact2.fromMap(
          (map['registrantContact'] as Map).cast<String, dynamic>()),
      technicalContact: Contact2.fromMap(
          (map['technicalContact'] as Map).cast<String, dynamic>()),
    );
  }
}
