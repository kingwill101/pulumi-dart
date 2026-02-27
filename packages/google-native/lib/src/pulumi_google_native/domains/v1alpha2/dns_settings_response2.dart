// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_dns_response2.dart';
import 'glue_record_response2.dart';
import 'google_domains_dns_response2.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsResponse2 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDnsResponse2 customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecordResponse2> glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDnsResponse2 googleDomainsDns;

  DnsSettingsResponse2({
    required this.customDns,
    required this.glueRecords,
    required this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customDns'] = customDns.toMap();
    map['glueRecords'] =
        Input.encodeList<GlueRecordResponse2, Map<String, dynamic>>(
            glueRecords, (value) => value.toMap());
    map['googleDomainsDns'] = googleDomainsDns.toMap();
    return map;
  }

  factory DnsSettingsResponse2.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponse2(
      customDns: CustomDnsResponse2.fromMap(
          (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: Input.decodeList<GlueRecordResponse2>(
          map['glueRecords'],
          (value) => GlueRecordResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      googleDomainsDns: GoogleDomainsDnsResponse2.fromMap(
          (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
