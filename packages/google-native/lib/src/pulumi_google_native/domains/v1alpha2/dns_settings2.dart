// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_dns2.dart';
import 'glue_record2.dart';
import 'google_domains_dns2.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettings2 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDns2? customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecord2>? glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDns2? googleDomainsDns;

  DnsSettings2({
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
      map['glueRecords'] = Input.encodeList<GlueRecord2, Map<String, dynamic>>(
          glueRecordsValue, (value) => value.toMap());
    }
    final googleDomainsDnsValue = googleDomainsDns;
    if (googleDomainsDnsValue != null) {
      map['googleDomainsDns'] = googleDomainsDnsValue.toMap();
    }
    return map;
  }

  factory DnsSettings2.fromMap(Map<String, dynamic> map) {
    return DnsSettings2(
      customDns: map['customDns'] == null
          ? null
          : CustomDns2.fromMap(
              (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: map['glueRecords'] == null
          ? null
          : Input.decodeList<GlueRecord2>(
              map['glueRecords'],
              (value) =>
                  GlueRecord2.fromMap((value as Map).cast<String, dynamic>())),
      googleDomainsDns: map['googleDomainsDns'] == null
          ? null
          : GoogleDomainsDns2.fromMap(
              (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
