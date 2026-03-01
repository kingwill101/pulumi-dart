// ignore_for_file: unused_element, unnecessary_cast

import 'contact_domains_v1beta1.dart';
import 'contact_settings_privacy_domains_v1beta1.dart';

/// Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.
class ContactSettingsDomainsV1beta1 {
  /// The administrative contact for the `Registration`.
  final ContactDomainsV1beta1 adminContact;

  /// Privacy setting for the contacts associated with the `Registration`.
  final ContactSettingsPrivacyDomainsV1beta1 privacy;

  /// The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  final ContactDomainsV1beta1 registrantContact;

  /// The technical contact for the `Registration`.
  final ContactDomainsV1beta1 technicalContact;

  /// Creates a new [ContactSettingsDomainsV1beta1].
  /// [adminContact] The administrative contact for the `Registration`.
  /// [privacy] Privacy setting for the contacts associated with the `Registration`.
  /// [registrantContact] The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  /// [technicalContact] The technical contact for the `Registration`.
  ContactSettingsDomainsV1beta1({
    required this.adminContact,
    required this.privacy,
    required this.registrantContact,
    required this.technicalContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminContact': adminContact.toMap(),
      'privacy': privacy.value,
      'registrantContact': registrantContact.toMap(),
      'technicalContact': technicalContact.toMap(),
    };
  }

  factory ContactSettingsDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return ContactSettingsDomainsV1beta1(
      adminContact: ContactDomainsV1beta1.fromMap(
        (map['adminContact'] as Map).cast<String, dynamic>(),
      ),
      privacy: ContactSettingsPrivacyDomainsV1beta1.fromValue(
        map['privacy'] as String,
      ),
      registrantContact: ContactDomainsV1beta1.fromMap(
        (map['registrantContact'] as Map).cast<String, dynamic>(),
      ),
      technicalContact: ContactDomainsV1beta1.fromMap(
        (map['technicalContact'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
