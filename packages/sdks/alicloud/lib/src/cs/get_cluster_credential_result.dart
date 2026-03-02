// ignore_for_file: unused_element, unnecessary_cast

import 'get_cluster_credential_certificate_authority.dart';

/// Result data returned by getClusterCredential.
class GetClusterCredentialResult {
  /// (Available in 1.105.0+) Nested attribute containing certificate authority data for your cluster.
  final GetClusterCredentialCertificateAuthority certificateAuthority;
  /// The id of target cluster.
  final String clusterId;
  /// The name of target cluster.
  final String clusterName;
  /// Expiration time of kube config. Format: UTC time in rfc3339.
  final String expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Sensitive) The kube config to use to authenticate with the cluster.
  final String kubeConfig;
  final String? outputFile;
  final int? temporaryDurationMinutes;

  /// Creates a new [GetClusterCredentialResult].
  /// [certificateAuthority] (Available in 1.105.0+) Nested attribute containing certificate authority data for your cluster.
  /// [clusterId] The id of target cluster.
  /// [clusterName] The name of target cluster.
  /// [expiration] Expiration time of kube config. Format: UTC time in rfc3339.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubeConfig] (Sensitive) The kube config to use to authenticate with the cluster.
  /// [outputFile] Optional.
  /// [temporaryDurationMinutes] Optional.
  GetClusterCredentialResult({
    required this.certificateAuthority,
    required this.clusterId,
    required this.clusterName,
    required this.expiration,
    required this.id,
    required this.kubeConfig,
    this.outputFile,
    this.temporaryDurationMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority.toMap(),
      'clusterId': clusterId,
      'clusterName': clusterName,
      'expiration': expiration,
      'id': id,
      'kubeConfig': kubeConfig,
      'outputFile': ?outputFile,
      'temporaryDurationMinutes': ?temporaryDurationMinutes,
    };
  }

  factory GetClusterCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialResult(
      certificateAuthority: GetClusterCredentialCertificateAuthority.fromMap((map['certificateAuthority'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      kubeConfig: map['kubeConfig'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      temporaryDurationMinutes: map['temporaryDurationMinutes'] == null ? null : map['temporaryDurationMinutes']! as int,
    );
  }
}

