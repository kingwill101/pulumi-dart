// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_dns_response.dart';
import 'glue_record_response.dart';
import 'google_domains_dns_response.dart';

/// Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.
class DnsSettingsResponse {
  /// An arbitrary DNS provider identified by its name servers.
  final CustomDnsResponse customDns;
  /// The list of glue records for this `Registration`. Commonly empty.
  final List<GlueRecordResponse> glueRecords;
  /// Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  final GoogleDomainsDnsResponse googleDomainsDns;

  /// Creates a new [DnsSettingsResponse].
  /// [customDns] An arbitrary DNS provider identified by its name servers.
  /// [glueRecords] The list of glue records for this `Registration`. Commonly empty.
  /// [googleDomainsDns] Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations) The free DNS zone provided by [Google Domains](https://domains.google/).
  DnsSettingsResponse({
    required this.customDns,
    required this.glueRecords,
    required this.googleDomainsDns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDns': customDns.toMap(),
      'glueRecords': pulumi.Input.encodeList<GlueRecordResponse, Map<String, dynamic>>(glueRecords, (value) => value.toMap()),
      'googleDomainsDns': googleDomainsDns.toMap(),
    };
  }

  factory DnsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponse(
      customDns: CustomDnsResponse.fromMap((map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: pulumi.Input.decodeList<GlueRecordResponse>(map['glueRecords'], (value) => GlueRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      googleDomainsDns: GoogleDomainsDnsResponse.fromMap((map['googleDomainsDns'] as Map).cast<String, dynamic>()),
    );
  }
}

