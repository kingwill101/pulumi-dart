// ignore_for_file: unused_element, unnecessary_cast

import 'enrichment_domain_whois_details_response.dart';

/// Result data returned by listWhoisByDomain.
class ListWhoisByDomainResult {
  /// The timestamp at which this record was created
  final String? created;
  /// The domain for this whois record
  final String? domain;
  /// The timestamp at which this record will expire
  final String? expires;
  /// The whois record for a given domain
  final EnrichmentDomainWhoisDetailsResponse? parsedWhois;
  /// The hostname of this registrar's whois server
  final String? server;
  /// The timestamp at which this record was last updated
  final String? updated;

  /// Creates a new [ListWhoisByDomainResult].
  /// [created] The timestamp at which this record was created
  /// [domain] The domain for this whois record
  /// [expires] The timestamp at which this record will expire
  /// [parsedWhois] The whois record for a given domain
  /// [server] The hostname of this registrar's whois server
  /// [updated] The timestamp at which this record was last updated
  ListWhoisByDomainResult({
    this.created,
    this.domain,
    this.expires,
    this.parsedWhois,
    this.server,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'domain': ?domain,
      'expires': ?expires,
      'parsedWhois': ?parsedWhois == null ? null : parsedWhois!.toMap(),
      'server': ?server,
      'updated': ?updated,
    };
  }

  factory ListWhoisByDomainResult.fromMap(Map<String, dynamic> map) {
    return ListWhoisByDomainResult(
      created: map['created'] == null ? null : map['created'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      expires: map['expires'] == null ? null : map['expires'] as String,
      parsedWhois: map['parsedWhois'] == null ? null : EnrichmentDomainWhoisDetailsResponse.fromMap((map['parsedWhois'] as Map).cast<String, dynamic>()),
      server: map['server'] == null ? null : map['server'] as String,
      updated: map['updated'] == null ? null : map['updated'] as String,
    );
  }
}

