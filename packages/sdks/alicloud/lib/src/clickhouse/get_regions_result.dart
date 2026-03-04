// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final bool? current;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final String? regionId;
  final List<GetRegionsRegion> regions;

  /// Creates a new [GetRegionsResult].
  /// [current] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [regionId] Optional.
  /// [regions] Required.
  GetRegionsResult({
    this.current,
    required this.id,
    this.outputFile,
    this.regionId,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current,
      'id': id,
      'outputFile': ?outputFile,
      'regionId': ?regionId,
      'regions':
          pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(
            regions,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      current: (() {
        final guardedValue = map['current'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      regions: pulumi.Input.decodeList<GetRegionsRegion>(
        map['regions']!,
        (value) =>
            GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
