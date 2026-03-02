// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterCredentialCertificateAuthority {
  /// The base64 encoded client certificate data required to communicate with your cluster. Add this to the client-certificate-data section of the kube config file for your cluster.
  final pulumi.Input<String> clientCert;
  /// The base64 encoded client key data required to communicate with your cluster. Add this to the client-key-data section of the kube config file for your cluster.
  final pulumi.Input<String> clientKey;
  /// The base64 encoded cluster certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kube config file for your cluster.
  final pulumi.Input<String> clusterCert;

  /// Creates a new [GetClusterCredentialCertificateAuthority].
  /// [clientCert] The base64 encoded client certificate data required to communicate with your cluster. Add this to the client-certificate-data section of the kube config file for your cluster.
  /// [clientKey] The base64 encoded client key data required to communicate with your cluster. Add this to the client-key-data section of the kube config file for your cluster.
  /// [clusterCert] The base64 encoded cluster certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kube config file for your cluster.
  GetClusterCredentialCertificateAuthority({
    required this.clientCert,
    required this.clientKey,
    required this.clusterCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCert': clientCert,
      'clientKey': clientKey,
      'clusterCert': clusterCert,
    };
  }

  factory GetClusterCredentialCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialCertificateAuthority(
      clientCert: (map['clientCert'] as String).input(),
      clientKey: (map['clientKey'] as String).input(),
      clusterCert: (map['clusterCert'] as String).input(),
    );
  }
}

