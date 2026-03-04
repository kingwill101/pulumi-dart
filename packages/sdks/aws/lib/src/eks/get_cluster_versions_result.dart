// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version.dart';

/// Result data returned by getClusterVersions.
class GetClusterVersionsResult {
  /// Type of cluster that the version belongs to.
  final String? clusterType;

  /// A list of Kubernetes version information.
  final List<GetClusterVersionsClusterVersion> clusterVersions;
  final List<String>? clusterVersionsOnlies;
  final bool? defaultOnly;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeAll;
  final String region;

  /// Status of the EKS cluster version.
  final String? versionStatus;

  /// Creates a new [GetClusterVersionsResult].
  /// [clusterType] Type of cluster that the version belongs to.
  /// [clusterVersions] A list of Kubernetes version information.
  /// [clusterVersionsOnlies] Optional.
  /// [defaultOnly] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeAll] Optional.
  /// [region] Required.
  /// [versionStatus] Status of the EKS cluster version.
  GetClusterVersionsResult({
    this.clusterType,
    required this.clusterVersions,
    this.clusterVersionsOnlies,
    this.defaultOnly,
    required this.id,
    this.includeAll,
    required this.region,
    this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'clusterVersions':
          pulumi.Input.encodeList<
            GetClusterVersionsClusterVersion,
            Map<String, dynamic>
          >(clusterVersions, (value) => value.toMap()),
      'clusterVersionsOnlies': ?clusterVersionsOnlies,
      'defaultOnly': ?defaultOnly,
      'id': id,
      'includeAll': ?includeAll,
      'region': region,
      'versionStatus': ?versionStatus,
    };
  }

  factory GetClusterVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsResult(
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      clusterVersions:
          pulumi.Input.decodeList<GetClusterVersionsClusterVersion>(
            map['clusterVersions']!,
            (value) => GetClusterVersionsClusterVersion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      clusterVersionsOnlies: (() {
        final guardedValue = map['clusterVersionsOnlies'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      defaultOnly: (() {
        final guardedValue = map['defaultOnly'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      includeAll: (() {
        final guardedValue = map['includeAll'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      region: map['region'] as String,
      versionStatus: (() {
        final guardedValue = map['versionStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
