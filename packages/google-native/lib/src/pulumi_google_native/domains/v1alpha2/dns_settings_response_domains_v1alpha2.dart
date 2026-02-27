// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_response_domains_v1alpha2.dart';
import 'glue_record_response_domains_v1alpha2.dart';
import 'google_domains_dns_response_domains_v1alpha2.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsResponseDomainsV1alpha2 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDnsResponseDomainsV1alpha2 customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecordResponseDomainsV1alpha2> glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDnsResponseDomainsV1alpha2 googleDomainsDns;

  DnsSettingsResponseDomainsV1alpha2({
    required this.customDns,
    required this.glueRecords,
    required this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customDns'] = customDns.toMap();
    map['glueRecords'] = pulumi.Input.encodeList<
        GlueRecordResponseDomainsV1alpha2,
        Map<String, dynamic>>(glueRecords, (value) => value.toMap());
    map['googleDomainsDns'] = googleDomainsDns.toMap();
    return map;
  }

  factory DnsSettingsResponseDomainsV1alpha2.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponseDomainsV1alpha2(
      customDns: CustomDnsResponseDomainsV1alpha2.fromMap(
          (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: pulumi.Input.decodeList<GlueRecordResponseDomainsV1alpha2>(
          map['glueRecords'],
          (value) => GlueRecordResponseDomainsV1alpha2.fromMap(
              (value as Map).cast<String, dynamic>())),
      googleDomainsDns: GoogleDomainsDnsResponseDomainsV1alpha2.fromMap(
          (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
