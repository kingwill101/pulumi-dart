// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ds_record_domains_v1beta1.dart';

/// Configuration for an arbitrary DNS provider.
class CustomDnsDomainsV1beta1 {
  /// The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  final List<DsRecordDomainsV1beta1>? dsRecords;

  /// A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  final List<String> nameServers;

  /// Creates a new [CustomDnsDomainsV1beta1].
  /// [dsRecords] The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide the values to set here. If this field is empty, DNSSEC is disabled.
  /// [nameServers] A list of name servers that store the DNS zone for this domain. Each name server is a domain name, with Unicode domain names expressed in Punycode format.
  CustomDnsDomainsV1beta1({
    this.dsRecords,
    required this.nameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dsRecordsValue = dsRecords;
    if (dsRecordsValue != null) {
      map['dsRecords'] =
          pulumi.Input.encodeList<DsRecordDomainsV1beta1, Map<String, dynamic>>(
              dsRecordsValue, (value) => value.toMap());
    }
    map['nameServers'] = nameServers;
    return map;
  }

  factory CustomDnsDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomDnsDomainsV1beta1(
      dsRecords: map['dsRecords'] == null
          ? null
          : pulumi.Input.decodeList<DsRecordDomainsV1beta1>(
              map['dsRecords'],
              (value) => DsRecordDomainsV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nameServers: (map['nameServers'] as List).cast<String>(),
    );
  }
}
