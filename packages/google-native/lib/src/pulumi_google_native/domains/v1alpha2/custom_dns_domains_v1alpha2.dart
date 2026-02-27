// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_domains_v1alpha2.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsDomainsV1alpha2 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final List<DsRecordDomainsV1alpha2>? dsRecords;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  CustomDnsDomainsV1alpha2({
    this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dsRecordsValue = dsRecords;
    if (dsRecordsValue != null) {
      map['dsRecords'] = pulumi.Input.encodeList<DsRecordDomainsV1alpha2,
          Map<String, dynamic>>(dsRecordsValue, (value) => value.toMap());
    }
    map['nameServers'] = nameServers;
    return map;
  }

  factory CustomDnsDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return CustomDnsDomainsV1alpha2(
      dsRecords: map['dsRecords'] == null
          ? null
          : pulumi.Input.decodeList<DsRecordDomainsV1alpha2>(
              map['dsRecords'],
              (value) => DsRecordDomainsV1alpha2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
