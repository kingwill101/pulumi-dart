// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cross_regions_region.dart';

/// Result data returned by getCrossRegions.
class GetCrossRegionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of region IDs.
  final List<String> ids;
  final String? outputFile;
  /// The list of destination regions that support cross-region backup. Each element contains the following attributes:
  final List<GetCrossRegionsRegion> regions;

  /// Creates a new [GetCrossRegionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of region IDs.
  /// [outputFile] Optional.
  /// [regions] The list of destination regions that support cross-region backup. Each element contains the following attributes:
  GetCrossRegionsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'regions': pulumi.Input.encodeList<GetCrossRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetCrossRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      regions: pulumi.Input.decodeList<GetCrossRegionsRegion>(map['regions'], (value) => GetCrossRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

