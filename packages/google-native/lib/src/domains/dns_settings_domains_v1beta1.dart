// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_domains_v1beta1.dart';
import 'glue_record_domains_v1beta1.dart';
import 'google_domains_dns_domains_v1beta1.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsDomainsV1beta1 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDnsDomainsV1beta1? customDns;
  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecordDomainsV1beta1>? glueRecords;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDnsDomainsV1beta1? googleDomainsDns;

  /// Creates a new [DnsSettingsDomainsV1beta1].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  DnsSettingsDomainsV1beta1({
    this.customDns,
    this.glueRecords,
    this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': ?customDns == null ? null : customDns!.toMap(),
      'glueRecords': ?glueRecords == null ? null : pulumi.Input.encodeList<GlueRecordDomainsV1beta1, Map<String, dynamic>>(glueRecords!, (value) => value.toMap()),
      'googleDomainsDns': ?googleDomainsDns == null ? null : googleDomainsDns!.toMap(),
    };
  }

  factory DnsSettingsDomainsV1beta1.fromMap(Map<String, dynamic> map) {
    return DnsSettingsDomainsV1beta1(
      customDns: map['customDns'] == null ? null : CustomDnsDomainsV1beta1.fromMap((map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: map['glueRecords'] == null ? null : pulumi.Input.decodeList<GlueRecordDomainsV1beta1>(map['glueRecords'], (value) => GlueRecordDomainsV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      googleDomainsDns: map['googleDomainsDns'] == null ? null : GoogleDomainsDnsDomainsV1beta1.fromMap((map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}

