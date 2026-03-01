// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GetChangeResult].
  /// [additions] Which ResourceRecordSets to add?
  /// [deletions] Which ResourceRecordSets to remove? Must match existing data exactly.
  /// [isServing] If the DNS queries for the zone will be served.
  /// [kind] Required.
  /// [startTime] The time that this operation was started by the server (output only). This is in RFC3339 text format.
  /// [status] Status of the operation (output only). A status of "done" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.
  GetChangeResult({
    required this.additions,
    required this.deletions,
    required this.isServing,
    required this.kind,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additions':
          pulumi.Input.encodeList<
            ResourceRecordSetResponse,
            Map<String, dynamic>
          >(additions, (value) => value.toMap()),
      'deletions':
          pulumi.Input.encodeList<
            ResourceRecordSetResponse,
            Map<String, dynamic>
          >(deletions, (value) => value.toMap()),
      'isServing': isServing,
      'kind': kind,
      'startTime': startTime,
      'status': status,
    };
  }

  factory GetChangeResult.fromMap(Map<String, dynamic> map) {
    return GetChangeResult(
      additions: pulumi.Input.decodeList<ResourceRecordSetResponse>(
        map['additions'],
        (value) => ResourceRecordSetResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      deletions: pulumi.Input.decodeList<ResourceRecordSetResponse>(
        map['deletions'],
        (value) => ResourceRecordSetResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      isServing: map['isServing'] as bool,
      kind: map['kind'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}
