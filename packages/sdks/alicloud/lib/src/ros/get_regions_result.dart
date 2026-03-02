// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final List<GetRegionsRegion> regions;

  /// Creates a new [GetRegionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [regions] Required.
  GetRegionsResult({
    required this.id,
    this.outputFile,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'regions': pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      regions: pulumi.Input.decodeList<GetRegionsRegion>(map['regions'], (value) => GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

