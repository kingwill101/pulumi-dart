// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_record_set_response.dart';

/// Result data returned by getChange.
class GetChangeResult {
  /// Which ResourceRecordSets to add?
  final List<ResourceRecordSetResponse> additions;

  /// Which ResourceRecordSets to remove? Must match existing data exactly.
  final List<ResourceRecordSetResponse> deletions;

  /// If the DNS queries for the zone will be served.
  final bool isServing;
  final String kind;

  /// The time that this operation was started by the server (output only). This is in RFC3339 text format.
  final String startTime;

  /// Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  final String status;

  GetChangeResult({
    required this.additions,
    required this.deletions,
    required this.isServing,
    required this.kind,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additions'] =
        Input.encodeList<ResourceRecordSetResponse, Map<String, dynamic>>(
            additions, (value) => value.toMap());
    map['deletions'] =
        Input.encodeList<ResourceRecordSetResponse, Map<String, dynamic>>(
            deletions, (value) => value.toMap());
    map['isServing'] = isServing;
    map['kind'] = kind;
    map['startTime'] = startTime;
    map['status'] = status;
    return map;
  }

  factory GetChangeResult.fromMap(Map<String, dynamic> map) {
    return GetChangeResult(
      additions: Input.decodeList<ResourceRecordSetResponse>(
          map['additions'],
          (value) => ResourceRecordSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      deletions: Input.decodeList<ResourceRecordSetResponse>(
          map['deletions'],
          (value) => ResourceRecordSetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      isServing: map['isServing'] as bool,
      kind: map['kind'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}
