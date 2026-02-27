// ignore_for_file: unused_element, unnecessary_cast

class GetClusterVersionsClusterVersion {
  /// Type of clusters to filter by.
  /// Currently, the only valid value is `eks`.
  final String clusterType;

  /// Kubernetes version supported by EKS.
  final String clusterVersion;

  /// Default eks platform version for the cluster version.
  final String defaultPlatformVersion;

  /// Default Kubernetes version for the cluster version.
  final bool defaultVersion;

  /// End of extended support date for the cluster version.
  final String endOfExtendedSupportDate;

  /// End of standard support date for the cluster version.
  final String endOfStandardSupportDate;

  /// Kubernetes patch version for the cluster version.
  final String kubernetesPatchVersion;

  /// Release date of the cluster version.
  final String releaseDate;

  /// Status of the EKS cluster versions to list.
  /// Valid values are `STANDARD_SUPPORT` or `UNSUPPORTED` or `EXTENDED_SUPPORT`.
  final String versionStatus;

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
    final map = <String, dynamic>{};
    map['clusterType'] = clusterType;
    map['clusterVersion'] = clusterVersion;
    map['defaultPlatformVersion'] = defaultPlatformVersion;
    map['defaultVersion'] = defaultVersion;
    map['endOfExtendedSupportDate'] = endOfExtendedSupportDate;
    map['endOfStandardSupportDate'] = endOfStandardSupportDate;
    map['kubernetesPatchVersion'] = kubernetesPatchVersion;
    map['releaseDate'] = releaseDate;
    map['versionStatus'] = versionStatus;
    return map;
  }

  factory GetClusterVersionsClusterVersion.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersion(
      clusterType: map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] as String,
      defaultPlatformVersion: map['defaultPlatformVersion'] as String,
      defaultVersion: map['defaultVersion'] as bool,
      endOfExtendedSupportDate: map['endOfExtendedSupportDate'] as String,
      endOfStandardSupportDate: map['endOfStandardSupportDate'] as String,
      kubernetesPatchVersion: map['kubernetesPatchVersion'] as String,
      releaseDate: map['releaseDate'] as String,
      versionStatus: map['versionStatus'] as String,
    );
  }
}
