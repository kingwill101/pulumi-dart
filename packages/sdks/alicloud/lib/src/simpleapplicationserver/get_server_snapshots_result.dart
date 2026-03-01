// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_snapshots_snapshot.dart';

/// Result data returned by getServerSnapshots.
class GetServerSnapshotsResult {
  final String? diskId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetServerSnapshotsSnapshot> snapshots;
  final String? status;

  /// Creates a new [GetServerSnapshotsResult].
  /// [diskId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [snapshots] Required.
  /// [status] Optional.
  GetServerSnapshotsResult({
    this.diskId,
    required this.id,
    required this.ids,
    this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.snapshots,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'snapshots': pulumi.Input.encodeList<GetServerSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetServerSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetServerSnapshotsResult(
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      snapshots: pulumi.Input.decodeList<GetServerSnapshotsSnapshot>(map['snapshots'], (value) => GetServerSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

