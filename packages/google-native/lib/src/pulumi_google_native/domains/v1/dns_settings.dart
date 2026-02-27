// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns.dart';
import 'glue_record.dart';
import 'google_domains_dns.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettings {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDns? customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecord>? glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDns? googleDomainsDns;

  DnsSettings({
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
      map['glueRecords'] =
          pulumi.Input.encodeList<GlueRecord, Map<String, dynamic>>(
              glueRecordsValue, (value) => value.toMap());
    }
    final googleDomainsDnsValue = googleDomainsDns;
    if (googleDomainsDnsValue != null) {
      map['googleDomainsDns'] = googleDomainsDnsValue.toMap();
    }
    return map;
  }

  factory DnsSettings.fromMap(Map<String, dynamic> map) {
    return DnsSettings(
      customDns: map['customDns'] == null
          ? null
          : CustomDns.fromMap(
              (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: map['glueRecords'] == null
          ? null
          : pulumi.Input.decodeList<GlueRecord>(
              map['glueRecords'],
              (value) =>
                  GlueRecord.fromMap((value as Map).cast<String, dynamic>())),
      googleDomainsDns: map['googleDomainsDns'] == null
          ? null
          : GoogleDomainsDns.fromMap(
              (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
