// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_replica_pairs_pair.dart';

/// Result data returned by getDiskReplicaPairs.
class GetDiskReplicaPairsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Disk Replica Pair IDs.
  final List<String> ids;
  final String? outputFile;
  /// A list of Disk Replica Pair Entries. Each element contains the following attributes:
  final List<GetDiskReplicaPairsPair> pairs;
  final String? replicaGroupId;
  final String? site;

  /// Creates a new [GetDiskReplicaPairsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Disk Replica Pair IDs.
  /// [outputFile] Optional.
  /// [pairs] A list of Disk Replica Pair Entries. Each element contains the following attributes:
  /// [replicaGroupId] Optional.
  /// [site] Optional.
  GetDiskReplicaPairsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.pairs,
    this.replicaGroupId,
    this.site,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pairs': pulumi.Input.encodeList<GetDiskReplicaPairsPair, Map<String, dynamic>>(pairs, (value) => value.toMap()),
      'replicaGroupId': ?replicaGroupId,
      'site': ?site,
    };
  }

  factory GetDiskReplicaPairsResult.fromMap(Map<String, dynamic> map) {
    return GetDiskReplicaPairsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pairs: pulumi.Input.decodeList<GetDiskReplicaPairsPair>(map['pairs']!, (value) => GetDiskReplicaPairsPair.fromMap((value as Map).cast<String, dynamic>())),
      replicaGroupId: (() { final guardedValue = map['replicaGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

