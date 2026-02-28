// ignore_for_file: unused_element, unnecessary_cast

import 'contact_response.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettingsResponse {
  /// The administrative contact for the `Registration`.
  final ContactResponse adminContact;
  /// Privacy setting for the contacts associated with the `Registration`.
  final String privacy;
  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final ContactResponse registrantContact;
  /// The technical contact for the `Registration`.
  final ContactResponse technicalContact;

  /// Creates a new [ContactSettingsResponse].
  /// [adminContact] The administrative contact for the `Registration`.
  /// [privacy] Privacy setting for the contacts associated with the `Registration`.
  /// [registrantContact] The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  /// [technicalContact] The technical contact for the `Registration`.
  ContactSettingsResponse({
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

  factory ContactSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ContactSettingsResponse(
      adminContact: ContactResponse.fromMap((map['adminContact'] as Map).cast<String, dynamic>()),
      privacy: map['privacy'] as String,
      registrantContact: ContactResponse.fromMap((map['registrantContact'] as Map).cast<String, dynamic>()),
      technicalContact: ContactResponse.fromMap((map['technicalContact'] as Map).cast<String, dynamic>()),
    );
  }
}

