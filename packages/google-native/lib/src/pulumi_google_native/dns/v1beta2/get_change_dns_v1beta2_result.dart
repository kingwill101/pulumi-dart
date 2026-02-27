// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_set_response_dns_v1beta2.dart';

/// Result data returned by getChange.
class GetChangeDnsV1beta2Result {
  /// Which ResourceRecordSets to add?
  final List<ResourceRecordSetResponseDnsV1beta2> additions;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final List<ResourceRecordSetResponseDnsV1beta2> deletions;

  /// If the DNS queries for the zone will be served.
  final bool isServing;
  final String kind;

  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  final String startTime;

  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  final String status;

  GetChangeDnsV1beta2Result({
    required this.additions,
    required this.deletions,
    required this.isServing,
    required this.kind,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additions'] = pulumi.Input.encodeList<
        ResourceRecordSetResponseDnsV1beta2,
        Map<String, dynamic>>(additions, (value) => value.toMap());
    map['deletions'] = pulumi.Input.encodeList<
        ResourceRecordSetResponseDnsV1beta2,
        Map<String, dynamic>>(deletions, (value) => value.toMap());
    map['isServing'] = isServing;
    map['kind'] = kind;
    map['startTime'] = startTime;
    map['status'] = status;
    return map;
  }

  factory GetChangeDnsV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetChangeDnsV1beta2Result(
      additions: pulumi.Input.decodeList<ResourceRecordSetResponseDnsV1beta2>(
          map['additions'],
          (value) => ResourceRecordSetResponseDnsV1beta2.fromMap(
              (value as Map).cast<String, dynamic>())),
      deletions: pulumi.Input.decodeList<ResourceRecordSetResponseDnsV1beta2>(
          map['deletions'],
          (value) => ResourceRecordSetResponseDnsV1beta2.fromMap(
              (value as Map).cast<String, dynamic>())),
      isServing: map['isServing'] as bool,
      kind: map['kind'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}
