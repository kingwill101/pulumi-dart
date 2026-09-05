// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_set_region.dart';

/// Result data returned by getReplicationSet.
class GetReplicationSetResult {
  /// ARN of the replication set.
  final String? arn;
  /// The ARN of the user who created the replication set.
  final String? createdBy;
  /// If `true`, the last remaining Region in a replication set can’t be deleted.
  final bool? deletionProtected;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ARN of the user who last modified the replication set.
  final String? lastModifiedBy;
  /// (**Deprecated**) The replication set's Regions. Use `regions` instead.
  final List<GetReplicationSetRegion>? region;
  /// The replication set's Regions.
  final List<GetReplicationSetRegion>? regions;
  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  final String? status;
  /// All tags applied to the replication set.
  final Map<String, String>? tags;

  /// Creates a new [GetReplicationSetResult].
  /// [arn] ARN of the replication set.
  /// [createdBy] The ARN of the user who created the replication set.
  /// [deletionProtected] If `true`, the last remaining Region in a replication set can’t be deleted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModifiedBy] The ARN of the user who last modified the replication set.
  /// [region] (**Deprecated**) The replication set's Regions. Use `regions` instead.
  /// [regions] The replication set's Regions.
  /// [status] The current status of the Region.
  /// [tags] All tags applied to the replication set.
  const GetReplicationSetResult({
    this.arn,
    this.createdBy,
    this.deletionProtected,
    this.id,
    this.lastModifiedBy,
    this.region,
    this.regions,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdBy': ?createdBy,
      'deletionProtected': ?deletionProtected,
      'id': ?id,
      'lastModifiedBy': ?lastModifiedBy,
      'region': ?(() { final guardedValue = region; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReplicationSetRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'regions': ?(() { final guardedValue = regions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReplicationSetRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetReplicationSetResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtected: (() { final guardedValue = map['deletionProtected']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReplicationSetRegion>(guardedValue, (value) => GetReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReplicationSetRegion>(guardedValue, (value) => GetReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
