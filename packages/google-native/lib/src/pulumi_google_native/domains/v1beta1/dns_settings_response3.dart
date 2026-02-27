// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_dns_response3.dart';
import 'glue_record_response3.dart';
import 'google_domains_dns_response3.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsResponse3 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDnsResponse3 customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecordResponse3> glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDnsResponse3 googleDomainsDns;

  DnsSettingsResponse3({
    required this.customDns,
    required this.glueRecords,
    required this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customDns'] = customDns.toMap();
    map['glueRecords'] =
        Input.encodeList<GlueRecordResponse3, Map<String, dynamic>>(
            glueRecords, (value) => value.toMap());
    map['googleDomainsDns'] = googleDomainsDns.toMap();
    return map;
  }

  factory DnsSettingsResponse3.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponse3(
      customDns: CustomDnsResponse3.fromMap(
          (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: Input.decodeList<GlueRecordResponse3>(
          map['glueRecords'],
          (value) => GlueRecordResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      googleDomainsDns: GoogleDomainsDnsResponse3.fromMap(
          (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
