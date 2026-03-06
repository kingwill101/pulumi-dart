// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final bool current;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of region IDs.
  final List<String> ids;
  final String name;
  final String? outputFile;
  /// A list of regions. Each element contains the following attributes:
  final List<GetRegionsRegion> regions;

  /// Creates a new [GetRegionsResult].
  /// [current] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of region IDs.
  /// [name] Required.
  /// [outputFile] Optional.
  /// [regions] A list of regions. Each element contains the following attributes:
  const GetRegionsResult({
    required this.current,
    required this.id,
    required this.ids,
    required this.name,
    this.outputFile,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': current,
      'id': id,
      'ids': ids,
      'name': name,
      'outputFile': ?outputFile,
      'regions': pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      current: map['current'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: map['name'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: pulumi.Input.decodeList<GetRegionsRegion>(map['regions']!, (value) => GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

