// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_domains_v1alpha2.dart';
import 'glue_record_domains_v1alpha2.dart';
import 'google_domains_dns_domains_v1alpha2.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsDomainsV1alpha2 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDnsDomainsV1alpha2? customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecordDomainsV1alpha2>? glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDnsDomainsV1alpha2? googleDomainsDns;

  DnsSettingsDomainsV1alpha2({
    this.customDns,
    this.glueRecords,
    this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customDnsValue = customDns;
    if (customDnsValue != null) {
      map['customDns'] = customDnsValue.toMap();
    }
    final glueRecordsValue = glueRecords;
    if (glueRecordsValue != null) {
      map['glueRecords'] = pulumi.Input.encodeList<GlueRecordDomainsV1alpha2,
          Map<String, dynamic>>(glueRecordsValue, (value) => value.toMap());
    }
    final googleDomainsDnsValue = googleDomainsDns;
    if (googleDomainsDnsValue != null) {
      map['googleDomainsDns'] = googleDomainsDnsValue.toMap();
    }
    return map;
  }

  factory DnsSettingsDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return DnsSettingsDomainsV1alpha2(
      customDns: map['customDns'] == null
          ? null
          : CustomDnsDomainsV1alpha2.fromMap(
              (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: map['glueRecords'] == null
          ? null
          : pulumi.Input.decodeList<GlueRecordDomainsV1alpha2>(
              map['glueRecords'],
              (value) => GlueRecordDomainsV1alpha2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      googleDomainsDns: map['googleDomainsDns'] == null
          ? null
          : GoogleDomainsDnsDomainsV1alpha2.fromMap(
              (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
