// ignore_for_file: unused_element, unnecessary_cast

import 'contact_response3.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettingsResponse3 {
  /// The administrative contact for the `Registration`.
  final ContactResponse3 adminContact;

  /// Privacy setting for the contacts associated with the `Registration`.
  final String privacy;

  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final ContactResponse3 registrantContact;

  /// The technical contact for the `Registration`.
  final ContactResponse3 technicalContact;

  ContactSettingsResponse3({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminContact'] = adminContact.toMap();
    map['privacy'] = privacy;
    map['registrantContact'] = registrantContact.toMap();
    map['technicalContact'] = technicalContact.toMap();
    return map;
  }

  factory ContactSettingsResponse3.fromMap(Map<String, dynamic> map) {
    return ContactSettingsResponse3(
      adminContact: ContactResponse3.fromMap(
          (map['adminContact'] as Map).cast<String, dynamic>()),
      privacy: map['privacy'] as String,
      registrantContact: ContactResponse3.fromMap(
          (map['registrantContact'] as Map).cast<String, dynamic>()),
      technicalContact: ContactResponse3.fromMap(
          (map['technicalContact'] as Map).cast<String, dynamic>()),
    );
  }
}
