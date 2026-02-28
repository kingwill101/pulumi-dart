// ignore_for_file: unused_element, unnecessary_cast

import 'google_domains_dns_ds_state.dart';

/// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).
class GoogleDomainsDns {
  /// The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  final GoogleDomainsDnsDsState dsState;

  /// Creates a new [GoogleDomainsDns].
  /// [dsState] The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  GoogleDomainsDns({
    required this.dsState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dsState'] = dsState.value;
    return map;
  }

  factory GoogleDomainsDns.fromMap(Map<String, dynamic> map) {
    return GoogleDomainsDns(
      dsState: GoogleDomainsDnsDsState.fromValue(map['dsState'] as String),
    );
  }
}
