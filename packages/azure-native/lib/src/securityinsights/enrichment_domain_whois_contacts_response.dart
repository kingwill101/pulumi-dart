// ignore_for_file: unused_element, unnecessary_cast

import 'enrichment_domain_whois_contact_response.dart';

/// The set of contacts associated with this domain
class EnrichmentDomainWhoisContactsResponse {
  /// The admin contact for this whois record
  final EnrichmentDomainWhoisContactResponse? admin;
  /// The billing contact for this whois record
  final EnrichmentDomainWhoisContactResponse? billing;
  /// The registrant contact for this whois record
  final EnrichmentDomainWhoisContactResponse? registrant;
  /// The technical contact for this whois record
  final EnrichmentDomainWhoisContactResponse? tech;

  /// Creates a new [EnrichmentDomainWhoisContactsResponse].
  /// [admin] The admin contact for this whois record
  /// [billing] The billing contact for this whois record
  /// [registrant] The registrant contact for this whois record
  /// [tech] The technical contact for this whois record
  EnrichmentDomainWhoisContactsResponse({
    this.admin,
    this.billing,
    this.registrant,
    this.tech,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin == null ? null : admin!.toMap(),
      'billing': ?billing == null ? null : billing!.toMap(),
      'registrant': ?registrant == null ? null : registrant!.toMap(),
      'tech': ?tech == null ? null : tech!.toMap(),
    };
  }

  factory EnrichmentDomainWhoisContactsResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentDomainWhoisContactsResponse(
      admin: map['admin'] == null ? null : EnrichmentDomainWhoisContactResponse.fromMap((map['admin'] as Map).cast<String, dynamic>()),
      billing: map['billing'] == null ? null : EnrichmentDomainWhoisContactResponse.fromMap((map['billing'] as Map).cast<String, dynamic>()),
      registrant: map['registrant'] == null ? null : EnrichmentDomainWhoisContactResponse.fromMap((map['registrant'] as Map).cast<String, dynamic>()),
      tech: map['tech'] == null ? null : EnrichmentDomainWhoisContactResponse.fromMap((map['tech'] as Map).cast<String, dynamic>()),
    );
  }
}

