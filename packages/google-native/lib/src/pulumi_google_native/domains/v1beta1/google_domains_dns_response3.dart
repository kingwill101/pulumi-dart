// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ds_record_response3.dart';

/// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).
class GoogleDomainsDnsResponse3 {
  /// The list of DS records published for this domain. The list is automatically populated when `ds_state` is `DS_RECORDS_PUBLISHED`, otherwise it remains empty.
  final List<DsRecordResponse3> dsRecords;

  /// The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  final String dsState;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format. This field is automatically populated with the name servers assigned to the Google Domains DNS zone.
  final List<String> nameServers;

  GoogleDomainsDnsResponse3({
    required this.dsRecords,
    required this.dsState,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dsRecords'] =
        Input.encodeList<DsRecordResponse3, Map<String, dynamic>>(
            dsRecords, (value) => value.toMap());
    map['dsState'] = dsState;
    map['nameServers'] = nameServers;
    return map;
  }

  factory GoogleDomainsDnsResponse3.fromMap(Map<String, dynamic> map) {
    return GoogleDomainsDnsResponse3(
      dsRecords: Input.decodeList<DsRecordResponse3>(
          map['dsRecords'],
          (value) => DsRecordResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      dsState: map['dsState'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
