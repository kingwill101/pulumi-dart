// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gi_versions_gi_version/get_gi_versions_gi_version.dart';

/// Result data returned by getGiVersions.
class GetGiVersionsResult {
  /// Information about a specific version of Oracle Grid Infrastructure (GI) software that can be installed on a VM cluster.
  final List<GetGiVersionsGiVersion> giVersions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String? shape;

  GetGiVersionsResult({
    required this.giVersions,
    required this.id,
    required this.region,
    this.shape,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['giVersions'] =
        Input.encodeList<GetGiVersionsGiVersion, Map<String, dynamic>>(
            giVersions, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    final shapeValue = shape;
    if (shapeValue != null) {
      map['shape'] = shapeValue;
    }
    return map;
  }

  factory GetGiVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsResult(
      giVersions: Input.decodeList<GetGiVersionsGiVersion>(
          map['giVersions'],
          (value) => GetGiVersionsGiVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
    );
  }
}
