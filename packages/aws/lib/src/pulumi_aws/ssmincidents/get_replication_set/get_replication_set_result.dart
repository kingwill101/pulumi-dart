// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_replication_set_region/get_replication_set_region.dart';

/// Result data returned by getReplicationSet.
class GetReplicationSetResult {
  /// The Amazon Resource Name (ARN) of the replication set.
  final String arn;

  /// The ARN of the user who created the replication set.
  final String createdBy;

  /// If `true`, the last remaining Region in a replication set can’t be deleted.
  final bool deletionProtected;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ARN of the user who last modified the replication set.
  final String lastModifiedBy;

  /// (**Deprecated**) The replication set's Regions. Use `regions` instead.
  final List<GetReplicationSetRegion> region;

  /// The replication set's Regions.
  final List<GetReplicationSetRegion> regions;

  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  final String status;

  /// All tags applied to the replication set.
  final Map<String, String> tags;

  GetReplicationSetResult({
    required this.arn,
    required this.createdBy,
    required this.deletionProtected,
    required this.id,
    required this.lastModifiedBy,
    required this.region,
    required this.regions,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdBy'] = createdBy;
    map['deletionProtected'] = deletionProtected;
    map['id'] = id;
    map['lastModifiedBy'] = lastModifiedBy;
    map['region'] =
        pulumi.Input.encodeList<GetReplicationSetRegion, Map<String, dynamic>>(
            region, (value) => value.toMap());
    map['regions'] =
        pulumi.Input.encodeList<GetReplicationSetRegion, Map<String, dynamic>>(
            regions, (value) => value.toMap());
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetReplicationSetResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationSetResult(
      arn: map['arn'] as String,
      createdBy: map['createdBy'] as String,
      deletionProtected: map['deletionProtected'] as bool,
      id: map['id'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      region: pulumi.Input.decodeList<GetReplicationSetRegion>(
          map['region'],
          (value) => GetReplicationSetRegion.fromMap(
              (value as Map).cast<String, dynamic>())),
      regions: pulumi.Input.decodeList<GetReplicationSetRegion>(
          map['regions'],
          (value) => GetReplicationSetRegion.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
