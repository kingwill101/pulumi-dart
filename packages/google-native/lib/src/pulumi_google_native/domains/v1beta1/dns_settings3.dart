// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'custom_dns3.dart';
import 'glue_record3.dart';
import 'google_domains_dns3.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettings3 {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDns3? customDns;

  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecord3>? glueRecords;

  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDns3? googleDomainsDns;

  DnsSettings3({
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
      map['glueRecords'] = Input.encodeList<GlueRecord3, Map<String, dynamic>>(
          glueRecordsValue, (value) => value.toMap());
    }
    final googleDomainsDnsValue = googleDomainsDns;
    if (googleDomainsDnsValue != null) {
      map['googleDomainsDns'] = googleDomainsDnsValue.toMap();
    }
    return map;
  }

  factory DnsSettings3.fromMap(Map<String, dynamic> map) {
    return DnsSettings3(
      customDns: map['customDns'] == null
          ? null
          : CustomDns3.fromMap(
              (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: map['glueRecords'] == null
          ? null
          : Input.decodeList<GlueRecord3>(
              map['glueRecords'],
              (value) =>
                  GlueRecord3.fromMap((value as Map).cast<String, dynamic>())),
      googleDomainsDns: map['googleDomainsDns'] == null
          ? null
          : GoogleDomainsDns3.fromMap(
              (map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}
