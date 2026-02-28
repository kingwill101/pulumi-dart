// ignore_for_file: unused_element, unnecessary_cast

class GetClusterUserManagedKeysConfig {
  /// The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  final String aggregationCa;

  /// The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  final String clusterCa;

  /// The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  final String controlPlaneDiskEncryptionKey;

  /// The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  final String etcdApiCa;

  /// The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  final String etcdPeerCa;

  /// Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  final String gkeopsEtcdBackupEncryptionKey;

  /// The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  final List<String> serviceAccountSigningKeys;

  /// The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  final List<String> serviceAccountVerificationKeys;

  /// Creates a new [GetClusterUserManagedKeysConfig].
  /// [aggregationCa] The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  /// [clusterCa] The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  /// [controlPlaneDiskEncryptionKey] The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  /// [etcdApiCa] The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  /// [etcdPeerCa] The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  /// [gkeopsEtcdBackupEncryptionKey] Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  /// [serviceAccountSigningKeys] The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  /// [serviceAccountVerificationKeys] The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  GetClusterUserManagedKeysConfig({
    required this.aggregationCa,
    required this.clusterCa,
    required this.controlPlaneDiskEncryptionKey,
    required this.etcdApiCa,
    required this.etcdPeerCa,
    required this.gkeopsEtcdBackupEncryptionKey,
    required this.serviceAccountSigningKeys,
    required this.serviceAccountVerificationKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregationCa'] = aggregationCa;
    map['clusterCa'] = clusterCa;
    map['controlPlaneDiskEncryptionKey'] = controlPlaneDiskEncryptionKey;
    map['etcdApiCa'] = etcdApiCa;
    map['etcdPeerCa'] = etcdPeerCa;
    map['gkeopsEtcdBackupEncryptionKey'] = gkeopsEtcdBackupEncryptionKey;
    map['serviceAccountSigningKeys'] = serviceAccountSigningKeys;
    map['serviceAccountVerificationKeys'] = serviceAccountVerificationKeys;
    return map;
  }

  factory GetClusterUserManagedKeysConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterUserManagedKeysConfig(
      aggregationCa: map['aggregationCa'] as String,
      clusterCa: map['clusterCa'] as String,
      controlPlaneDiskEncryptionKey:
          map['controlPlaneDiskEncryptionKey'] as String,
      etcdApiCa: map['etcdApiCa'] as String,
      etcdPeerCa: map['etcdPeerCa'] as String,
      gkeopsEtcdBackupEncryptionKey:
          map['gkeopsEtcdBackupEncryptionKey'] as String,
      serviceAccountSigningKeys:
          (map['serviceAccountSigningKeys'] as List).cast<String>(),
      serviceAccountVerificationKeys:
          (map['serviceAccountVerificationKeys'] as List).cast<String>(),
    );
  }
}
