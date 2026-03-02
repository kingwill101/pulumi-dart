// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersion {
  /// Type of clusters to filter by.
  /// Currently, the only valid value is `eks`.
  final pulumi.Input<String> clusterType;
  /// Kubernetes version supported by EKS.
  final pulumi.Input<String> clusterVersion;
  /// Default eks platform version for the cluster version.
  final pulumi.Input<String> defaultPlatformVersion;
  /// Default Kubernetes version for the cluster version.
  final pulumi.Input<bool> defaultVersion;
  /// End of extended support date for the cluster version.
  final pulumi.Input<String> endOfExtendedSupportDate;
  /// End of standard support date for the cluster version.
  final pulumi.Input<String> endOfStandardSupportDate;
  /// Kubernetes patch version for the cluster version.
  final pulumi.Input<String> kubernetesPatchVersion;
  /// Release date of the cluster version.
  final pulumi.Input<String> releaseDate;
  /// Status of the EKS cluster versions to list.
  /// Valid values are `STANDARD_SUPPORT` or `UNSUPPORTED` or `EXTENDED_SUPPORT`.
  final pulumi.Input<String> versionStatus;

  /// Creates a new [GetClusterVersionsClusterVersion].
  /// [clusterType] Type of clusters to filter by.
  /// [clusterVersion] Kubernetes version supported by EKS.
  /// [defaultPlatformVersion] Default eks platform version for the cluster version.
  /// [defaultVersion] Default Kubernetes version for the cluster version.
  /// [endOfExtendedSupportDate] End of extended support date for the cluster version.
  /// [endOfStandardSupportDate] End of standard support date for the cluster version.
  /// [kubernetesPatchVersion] Kubernetes patch version for the cluster version.
  /// [releaseDate] Release date of the cluster version.
  /// [versionStatus] Status of the EKS cluster versions to list.
  GetClusterVersionsClusterVersion({
    required this.clusterType,
    required this.clusterVersion,
    required this.defaultPlatformVersion,
    required this.defaultVersion,
    required this.endOfExtendedSupportDate,
    required this.endOfStandardSupportDate,
    required this.kubernetesPatchVersion,
    required this.releaseDate,
    required this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'clusterVersion': clusterVersion,
      'defaultPlatformVersion': defaultPlatformVersion,
      'defaultVersion': defaultVersion,
      'endOfExtendedSupportDate': endOfExtendedSupportDate,
      'endOfStandardSupportDate': endOfStandardSupportDate,
      'kubernetesPatchVersion': kubernetesPatchVersion,
      'releaseDate': releaseDate,
      'versionStatus': versionStatus,
    };
  }

  factory GetClusterVersionsClusterVersion.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersion(
      clusterType: (map['clusterType'] as String).input(),
      clusterVersion: (map['clusterVersion'] as String).input(),
      defaultPlatformVersion: (map['defaultPlatformVersion'] as String).input(),
      defaultVersion: (map['defaultVersion'] as bool).input(),
      endOfExtendedSupportDate: (map['endOfExtendedSupportDate'] as String).input(),
      endOfStandardSupportDate: (map['endOfStandardSupportDate'] as String).input(),
      kubernetesPatchVersion: (map['kubernetesPatchVersion'] as String).input(),
      releaseDate: (map['releaseDate'] as String).input(),
      versionStatus: (map['versionStatus'] as String).input(),
    );
  }
}

