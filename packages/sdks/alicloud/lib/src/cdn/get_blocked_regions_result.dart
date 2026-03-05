// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_blocked_regions_region.dart';

/// Result data returned by getBlockedRegions.
class GetBlockedRegionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String language;
  final List<GetBlockedRegionsRegion> regions;

  /// Creates a new [GetBlockedRegionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [language] Required.
  /// [regions] Required.
  GetBlockedRegionsResult({
    required this.id,
    required this.language,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'language': language,
      'regions': pulumi.Input.encodeList<GetBlockedRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetBlockedRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetBlockedRegionsResult(
      id: map['id'] as String,
      language: map['language'] as String,
      regions: pulumi.Input.decodeList<GetBlockedRegionsRegion>(map['regions']!, (value) => GetBlockedRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

