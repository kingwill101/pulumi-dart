// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gi_versions_gi_version.dart';

/// Result data returned by getGiVersions.
class GetGiVersionsResult {
  /// Information about a specific version of Oracle Grid Infrastructure (GI) software that can be installed on a VM cluster.
  final List<GetGiVersionsGiVersion>? giVersions;
  final String? region;
  final String? shape;

  /// Creates a new [GetGiVersionsResult].
  /// [giVersions] Information about a specific version of Oracle Grid Infrastructure (GI) software that can be installed on a VM cluster.
  /// [region] Optional.
  /// [shape] Optional.
  const GetGiVersionsResult({
    this.giVersions,
    this.region,
    this.shape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'giVersions': ?(() { final guardedValue = giVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGiVersionsGiVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'shape': ?shape,
    };
  }

  factory GetGiVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsResult(
      giVersions: (() { final guardedValue = map['giVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGiVersionsGiVersion>(guardedValue, (value) => GetGiVersionsGiVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
