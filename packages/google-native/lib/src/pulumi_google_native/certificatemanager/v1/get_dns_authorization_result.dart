// ignore_for_file: unused_element, unnecessary_cast

import 'dns_resource_record_response.dart';

/// Result data returned by getDnsAuthorization.
class GetDnsAuthorizationResult {
  /// The creation timestamp of a DnsAuthorization.
  final String createTime;

  /// One or more paragraphs of text description of a DnsAuthorization.
  final String description;

  /// DNS Resource Record that needs to be added to DNS configuration.
  final DnsResourceRecordResponse dnsResourceRecord;

  /// Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.
  final String domain;

  /// Set of labels associated with a DnsAuthorization.
  final Map<String, String> labels;

  /// A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
  final String name;

  /// The last update timestamp of a DnsAuthorization.
  final String updateTime;

  GetDnsAuthorizationResult({
    required this.createTime,
    required this.description,
    required this.dnsResourceRecord,
    required this.domain,
    required this.labels,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['dnsResourceRecord'] = dnsResourceRecord.toMap();
    map['domain'] = domain;
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetDnsAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      dnsResourceRecord: DnsResourceRecordResponse.fromMap(
          (map['dnsResourceRecord'] as Map).cast<String, dynamic>()),
      domain: map['domain'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
