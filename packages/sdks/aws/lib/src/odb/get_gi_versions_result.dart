// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gi_versions_gi_version.dart';

/// Result data returned by getGiVersions.
class GetGiVersionsResult {
  /// Information about a specific version of Oracle Grid Infrastructure (GI) software that can be installed on a VM cluster.
  final List<GetGiVersionsGiVersion> giVersions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String? shape;

  /// Creates a new [GetGiVersionsResult].
  /// [giVersions] Information about a specific version of Oracle Grid Infrastructure (GI) software that can be installed on a VM cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [shape] Optional.
  GetGiVersionsResult({
    required this.giVersions,
    required this.id,
    required this.region,
    this.shape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'giVersions': pulumi.Input.encodeList<GetGiVersionsGiVersion, Map<String, dynamic>>(giVersions, (value) => value.toMap()),
      'id': id,
      'region': region,
      'shape': ?shape,
    };
  }

  factory GetGiVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsResult(
      giVersions: pulumi.Input.decodeList<GetGiVersionsGiVersion>(map['giVersions']!, (value) => GetGiVersionsGiVersion.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

