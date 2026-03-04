// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReplicationVaultRegionsRegion {
  /// The ID of the replication region.
  final pulumi.Input<String> replicationRegionId;

  /// Creates a new [GetReplicationVaultRegionsRegion].
  /// [replicationRegionId] The ID of the replication region.
  GetReplicationVaultRegionsRegion({required this.replicationRegionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'replicationRegionId': replicationRegionId};
  }

  factory GetReplicationVaultRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetReplicationVaultRegionsRegion(
      replicationRegionId: pulumi.Input.fromValue(
        map['replicationRegionId'] as String,
      ),
    );
  }
}
