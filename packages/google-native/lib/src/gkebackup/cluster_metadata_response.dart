// ignore_for_file: unused_element, unnecessary_cast

/// Information about the GKE cluster from which this Backup was created.
class ClusterMetadataResponse {
  /// Anthos version
  final String anthosVersion;

  /// A list of the Backup for GKE CRD versions found in the cluster.
  final Map<String, String> backupCrdVersions;

  /// The source cluster from which this Backup was created. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` This is inherited from the parent BackupPlan's cluster field.
  final String cluster;

  /// GKE version
  final String gkeVersion;

  /// The Kubernetes server version of the source cluster.
  final String k8sVersion;

  /// Creates a new [ClusterMetadataResponse].
  /// [anthosVersion] Anthos version
  /// [backupCrdVersions] A list of the Backup for GKE CRD versions found in the cluster.
  /// [cluster] The source cluster from which this Backup was created. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` This is inherited from the parent BackupPlan's cluster field.
  /// [gkeVersion] GKE version
  /// [k8sVersion] The Kubernetes server version of the source cluster.
  ClusterMetadataResponse({
    required this.anthosVersion,
    required this.backupCrdVersions,
    required this.cluster,
    required this.gkeVersion,
    required this.k8sVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthosVersion': anthosVersion,
      'backupCrdVersions': backupCrdVersions,
      'cluster': cluster,
      'gkeVersion': gkeVersion,
      'k8sVersion': k8sVersion,
    };
  }

  factory ClusterMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ClusterMetadataResponse(
      anthosVersion: map['anthosVersion'] as String,
      backupCrdVersions: (map['backupCrdVersions'] as Map)
          .cast<String, String>(),
      cluster: map['cluster'] as String,
      gkeVersion: map['gkeVersion'] as String,
      k8sVersion: map['k8sVersion'] as String,
    );
  }
}
