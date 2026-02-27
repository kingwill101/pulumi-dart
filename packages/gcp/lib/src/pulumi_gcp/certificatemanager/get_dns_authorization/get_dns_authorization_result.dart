// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_dns_authorization_dns_resource_record/get_dns_authorization_dns_resource_record.dart';

/// Result data returned by getDnsAuthorization.
class GetDnsAuthorizationResult {
  final String description;
  final List<GetDnsAuthorizationDnsResourceRecord> dnsResourceRecords;
  final String domain;
  final Map<String, String> effectiveLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String? location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String type;

  GetDnsAuthorizationResult({
    required this.description,
    required this.dnsResourceRecords,
    required this.domain,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['dnsResourceRecords'] = pulumi.Input.encodeList<
        GetDnsAuthorizationDnsResourceRecord,
        Map<String, dynamic>>(dnsResourceRecords, (value) => value.toMap());
    map['domain'] = domain;
    map['effectiveLabels'] = effectiveLabels;
    map['id'] = id;
    map['labels'] = labels;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['type'] = type;
    return map;
  }

  factory GetDnsAuthorizationResult.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationResult(
      description: map['description'] as String,
      dnsResourceRecords:
          pulumi.Input.decodeList<GetDnsAuthorizationDnsResourceRecord>(
              map['dnsResourceRecords'],
              (value) => GetDnsAuthorizationDnsResourceRecord.fromMap(
                  (value as Map).cast<String, dynamic>())),
      domain: map['domain'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
