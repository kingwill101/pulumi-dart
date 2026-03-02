// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_vault_regions_region.dart';

/// Result data returned by getReplicationVaultRegions.
class GetReplicationVaultRegionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final List<GetReplicationVaultRegionsRegion> regions;

  /// Creates a new [GetReplicationVaultRegionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [regions] Required.
  GetReplicationVaultRegionsResult({
    required this.id,
    this.outputFile,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'regions': pulumi.Input.encodeList<GetReplicationVaultRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetReplicationVaultRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationVaultRegionsResult(
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      regions: pulumi.Input.decodeList<GetReplicationVaultRegionsRegion>(map['regions'], (value) => GetReplicationVaultRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

