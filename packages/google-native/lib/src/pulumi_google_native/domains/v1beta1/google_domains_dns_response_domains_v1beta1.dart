// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_response_domains_v1beta1.dart';

/// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) Configuration for using the free DNS zone provided by Google Domains as a `Registration`'s `dns_provider`. You cannot configure the DNS zone itself using the API. To configure the DNS zone, go to [Google Domains](https://domains.google/).
class GoogleDomainsDnsResponseDomainsV1beta1 {
  /// The list of DS records published for this domain. The list is automatically populated when `ds_state` is `DS_RECORDS_PUBLISHED`, otherwise it remains empty.
  final List<DsRecordResponseDomainsV1beta1> dsRecords;

  /// The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
  final String dsState;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format. This field is automatically populated with the name servers assigned to the Google Domains DNS zone.
  final List<String> nameServers;

  GoogleDomainsDnsResponseDomainsV1beta1({
    required this.dsRecords,
    required this.dsState,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dsRecords'] = pulumi.Input.encodeList<DsRecordResponseDomainsV1beta1,
        Map<String, dynamic>>(dsRecords, (value) => value.toMap());
    map['dsState'] = dsState;
    map['nameServers'] = nameServers;
    return map;
  }

  factory GoogleDomainsDnsResponseDomainsV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GoogleDomainsDnsResponseDomainsV1beta1(
      dsRecords: pulumi.Input.decodeList<DsRecordResponseDomainsV1beta1>(
          map['dsRecords'],
          (value) => DsRecordResponseDomainsV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      dsState: map['dsState'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
