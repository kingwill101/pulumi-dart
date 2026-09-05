// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version.dart';

/// Result data returned by getClusterVersions.
class GetClusterVersionsResult {
  /// Type of cluster that the version belongs to.
  final String? clusterType;
  /// A list of Kubernetes version information.
  final List<GetClusterVersionsClusterVersion>? clusterVersions;
  final List<String>? clusterVersionsOnlies;
  final bool? defaultOnly;
  final bool? includeAll;
  final String? region;
  /// Status of the EKS cluster version.
  final String? versionStatus;

  /// Creates a new [GetClusterVersionsResult].
  /// [clusterType] Type of cluster that the version belongs to.
  /// [clusterVersions] A list of Kubernetes version information.
  /// [clusterVersionsOnlies] Optional.
  /// [defaultOnly] Optional.
  /// [includeAll] Optional.
  /// [region] Optional.
  /// [versionStatus] Status of the EKS cluster version.
  const GetClusterVersionsResult({
    this.clusterType,
    this.clusterVersions,
    this.clusterVersionsOnlies,
    this.defaultOnly,
    this.includeAll,
    this.region,
    this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'clusterVersions': ?(() { final guardedValue = clusterVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterVersionsClusterVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterVersionsOnlies': ?clusterVersionsOnlies,
      'defaultOnly': ?defaultOnly,
      'includeAll': ?includeAll,
      'region': ?region,
      'versionStatus': ?versionStatus,
    };
  }

  factory GetClusterVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsResult(
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterVersions: (() { final guardedValue = map['clusterVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterVersionsClusterVersion>(guardedValue, (value) => GetClusterVersionsClusterVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterVersionsOnlies: (() { final guardedValue = map['clusterVersionsOnlies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      defaultOnly: (() { final guardedValue = map['defaultOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeAll: (() { final guardedValue = map['includeAll']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionStatus: (() { final guardedValue = map['versionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
