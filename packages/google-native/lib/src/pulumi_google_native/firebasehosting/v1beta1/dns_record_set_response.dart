// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dns_record_response.dart';
import 'status_response17.dart';

/// A set of DNS records relevant to the setup and maintenance of a custom domain in Firebase Hosting.
class DnsRecordSetResponse {
  /// An error Hosting services encountered when querying your domain name's DNS records. Note: Hosting ignores `NXDOMAIN` errors, as those generally just mean that a domain name hasn't been set up yet.
  final StatusResponse17 checkError;

  /// The domain name the record set pertains to.
  final String domainName;

  /// Records on the domain.
  final List<DnsRecordResponse> records;

  DnsRecordSetResponse({
    required this.checkError,
    required this.domainName,
    required this.records,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkError'] = checkError.toMap();
    map['domainName'] = domainName;
    map['records'] = Input.encodeList<DnsRecordResponse, Map<String, dynamic>>(
        records, (value) => value.toMap());
    return map;
  }

  factory DnsRecordSetResponse.fromMap(Map<String, dynamic> map) {
    return DnsRecordSetResponse(
      checkError: StatusResponse17.fromMap(
          (map['checkError'] as Map).cast<String, dynamic>()),
      domainName: map['domainName'] as String,
      records: Input.decodeList<DnsRecordResponse>(
          map['records'],
          (value) => DnsRecordResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
