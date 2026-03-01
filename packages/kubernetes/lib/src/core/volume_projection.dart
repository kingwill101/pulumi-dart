// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_trust_bundle_projection.dart';
import 'config_map_projection.dart';
import 'downward_apiprojection.dart';
import 'pod_certificate_projection.dart';
import 'secret_projection.dart';
import 'service_account_token_projection.dart';

/// Projection that may be projected along with other supported volume types. Exactly one of these fields must be set.
class VolumeProjection {
  /// ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of ClusterTrustBundle objects in an auto-updating file.
  ///
  /// Alpha, gated by the ClusterTrustBundleProjection feature gate.
  ///
  /// ClusterTrustBundle objects can either be selected by name, or by the combination of signer name and a label selector.
  ///
  /// Kubelet performs aggressive normalization of the PEM contents written into the pod filesystem.  Esoteric PEM features such as inter-block comments and block headers are stripped.  Certificates are deduplicated. The ordering of certificates within the file is arbitrary, and Kubelet may change the order over time.
  final ClusterTrustBundleProjection? clusterTrustBundle;
  /// configMap information about the configMap data to project
  final ConfigMapProjection? configMap;
  /// downwardAPI information about the downwardAPI data to project
  final DownwardAPIProjection? downwardAPI;
  /// Projects an auto-rotating credential bundle (private key and certificate chain) that the pod can use either as a TLS client or server.
  ///
  /// Kubelet generates a private key and uses it to send a PodCertificateRequest to the named signer.  Once the signer approves the request and issues a certificate chain, Kubelet writes the key and certificate chain to the pod filesystem.  The pod does not start until certificates have been issued for each podCertificate projected volume source in its spec.
  ///
  /// Kubelet will begin trying to rotate the certificate at the time indicated by the signer using the PodCertificateRequest.Status.BeginRefreshAt timestamp.
  ///
  /// Kubelet can write a single file, indicated by the credentialBundlePath field, or separate files, indicated by the keyPath and certificateChainPath fields.
  ///
  /// The credential bundle is a single file in PEM format.  The first PEM entry is the private key (in PKCS#8 format), and the remaining PEM entries are the certificate chain issued by the signer (typically, signers will return their certificate chain in leaf-to-root order).
  ///
  /// Prefer using the credential bundle format, since your application code can read it atomically.  If you use keyPath and certificateChainPath, your application must make two separate file reads. If these coincide with a certificate rotation, it is possible that the private key and leaf certificate you read may not correspond to each other.  Your application will need to check for this condition, and re-read until they are consistent.
  ///
  /// The named signer controls chooses the format of the certificate it issues; consult the signer implementation's documentation to learn how to use the certificates it issues.
  final PodCertificateProjection? podCertificate;
  /// secret information about the secret data to project
  final SecretProjection? secret;
  /// serviceAccountToken is information about the serviceAccountToken data to project
  final ServiceAccountTokenProjection? serviceAccountToken;

  /// Creates a new [VolumeProjection].
  /// [clusterTrustBundle] ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of ClusterTrustBundle objects in an auto-updating file.
  /// [configMap] configMap information about the configMap data to project
  /// [downwardAPI] downwardAPI information about the downwardAPI data to project
  /// [podCertificate] Projects an auto-rotating credential bundle (private key and certificate chain) that the pod can use either as a TLS client or server.
  /// [secret] secret information about the secret data to project
  /// [serviceAccountToken] serviceAccountToken is information about the serviceAccountToken data to project
  VolumeProjection({
    this.clusterTrustBundle,
    this.configMap,
    this.downwardAPI,
    this.podCertificate,
    this.secret,
    this.serviceAccountToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTrustBundle': ?clusterTrustBundle == null ? null : clusterTrustBundle!.toMap(),
      'configMap': ?configMap == null ? null : configMap!.toMap(),
      'downwardAPI': ?downwardAPI == null ? null : downwardAPI!.toMap(),
      'podCertificate': ?podCertificate == null ? null : podCertificate!.toMap(),
      'secret': ?secret == null ? null : secret!.toMap(),
      'serviceAccountToken': ?serviceAccountToken == null ? null : serviceAccountToken!.toMap(),
    };
  }

  factory VolumeProjection.fromMap(Map<String, dynamic> map) {
    return VolumeProjection(
      clusterTrustBundle: map['clusterTrustBundle'] == null ? null : ClusterTrustBundleProjection.fromMap((map['clusterTrustBundle'] as Map).cast<String, dynamic>()),
      configMap: map['configMap'] == null ? null : ConfigMapProjection.fromMap((map['configMap'] as Map).cast<String, dynamic>()),
      downwardAPI: map['downwardAPI'] == null ? null : DownwardAPIProjection.fromMap((map['downwardAPI'] as Map).cast<String, dynamic>()),
      podCertificate: map['podCertificate'] == null ? null : PodCertificateProjection.fromMap((map['podCertificate'] as Map).cast<String, dynamic>()),
      secret: map['secret'] == null ? null : SecretProjection.fromMap((map['secret'] as Map).cast<String, dynamic>()),
      serviceAccountToken: map['serviceAccountToken'] == null ? null : ServiceAccountTokenProjection.fromMap((map['serviceAccountToken'] as Map).cast<String, dynamic>()),
    );
  }
}

