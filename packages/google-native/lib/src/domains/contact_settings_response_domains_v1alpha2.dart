// ignore_for_file: unused_element, unnecessary_cast

import 'contact_response_domains_v1alpha2.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettingsResponseDomainsV1alpha2 {
  /// The administrative contact for the `Registration`.
  final ContactResponseDomainsV1alpha2 adminContact;
  /// Privacy setting for the contacts associated with the `Registration`.
  final String privacy;
  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final ContactResponseDomainsV1alpha2 registrantContact;
  /// The technical contact for the `Registration`.
  final ContactResponseDomainsV1alpha2 technicalContact;

  /// Creates a new [ContactSettingsResponseDomainsV1alpha2].
  /// [adminContact] The administrative contact for the `Registration`.
  /// [privacy] Privacy setting for the contacts associated with the `Registration`.
  /// [registrantContact] The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  /// [technicalContact] The technical contact for the `Registration`.
  ContactSettingsResponseDomainsV1alpha2({
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

  factory ContactSettingsResponseDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return ContactSettingsResponseDomainsV1alpha2(
      adminContact: ContactResponseDomainsV1alpha2.fromMap((map['adminContact'] as Map).cast<String, dynamic>()),
      privacy: map['privacy'] as String,
      registrantContact: ContactResponseDomainsV1alpha2.fromMap((map['registrantContact'] as Map).cast<String, dynamic>()),
      technicalContact: ContactResponseDomainsV1alpha2.fromMap((map['technicalContact'] as Map).cast<String, dynamic>()),
    );
  }
}

