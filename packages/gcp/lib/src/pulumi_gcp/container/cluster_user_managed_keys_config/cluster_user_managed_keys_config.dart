// ignore_for_file: unused_element, unnecessary_cast

class ClusterUserManagedKeysConfig {
  /// The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  final String? aggregationCa;

  /// The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  final String? clusterCa;

  /// The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  final String? controlPlaneDiskEncryptionKey;

  /// The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  final String? etcdApiCa;

  /// The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  final String? etcdPeerCa;

  /// Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  final String? gkeopsEtcdBackupEncryptionKey;

  /// The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  final List<String>? serviceAccountSigningKeys;

  /// The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  final List<String>? serviceAccountVerificationKeys;

  ClusterUserManagedKeysConfig({
    this.aggregationCa,
    this.clusterCa,
    this.controlPlaneDiskEncryptionKey,
    this.etcdApiCa,
    this.etcdPeerCa,
    this.gkeopsEtcdBackupEncryptionKey,
    this.serviceAccountSigningKeys,
    this.serviceAccountVerificationKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationCaValue = aggregationCa;
    if (aggregationCaValue != null) {
      map['aggregationCa'] = aggregationCaValue;
    }
    final clusterCaValue = clusterCa;
    if (clusterCaValue != null) {
      map['clusterCa'] = clusterCaValue;
    }
    final controlPlaneDiskEncryptionKeyValue = controlPlaneDiskEncryptionKey;
    if (controlPlaneDiskEncryptionKeyValue != null) {
      map['controlPlaneDiskEncryptionKey'] = controlPlaneDiskEncryptionKeyValue;
    }
    final etcdApiCaValue = etcdApiCa;
    if (etcdApiCaValue != null) {
      map['etcdApiCa'] = etcdApiCaValue;
    }
    final etcdPeerCaValue = etcdPeerCa;
    if (etcdPeerCaValue != null) {
      map['etcdPeerCa'] = etcdPeerCaValue;
    }
    final gkeopsEtcdBackupEncryptionKeyValue = gkeopsEtcdBackupEncryptionKey;
    if (gkeopsEtcdBackupEncryptionKeyValue != null) {
      map['gkeopsEtcdBackupEncryptionKey'] = gkeopsEtcdBackupEncryptionKeyValue;
    }
    final serviceAccountSigningKeysValue = serviceAccountSigningKeys;
    if (serviceAccountSigningKeysValue != null) {
      map['serviceAccountSigningKeys'] = serviceAccountSigningKeysValue;
    }
    final serviceAccountVerificationKeysValue = serviceAccountVerificationKeys;
    if (serviceAccountVerificationKeysValue != null) {
      map['serviceAccountVerificationKeys'] =
          serviceAccountVerificationKeysValue;
    }
    return map;
  }

  factory ClusterUserManagedKeysConfig.fromMap(Map<String, dynamic> map) {
    return ClusterUserManagedKeysConfig(
      aggregationCa:
          map['aggregationCa'] == null ? null : map['aggregationCa'] as String,
      clusterCa: map['clusterCa'] == null ? null : map['clusterCa'] as String,
      controlPlaneDiskEncryptionKey:
          map['controlPlaneDiskEncryptionKey'] == null
              ? null
              : map['controlPlaneDiskEncryptionKey'] as String,
      etcdApiCa: map['etcdApiCa'] == null ? null : map['etcdApiCa'] as String,
      etcdPeerCa:
          map['etcdPeerCa'] == null ? null : map['etcdPeerCa'] as String,
      gkeopsEtcdBackupEncryptionKey:
          map['gkeopsEtcdBackupEncryptionKey'] == null
              ? null
              : map['gkeopsEtcdBackupEncryptionKey'] as String,
      serviceAccountSigningKeys: map['serviceAccountSigningKeys'] == null
          ? null
          : (map['serviceAccountSigningKeys'] as List).cast<String>(),
      serviceAccountVerificationKeys:
          map['serviceAccountVerificationKeys'] == null
              ? null
              : (map['serviceAccountVerificationKeys'] as List).cast<String>(),
    );
  }
}
