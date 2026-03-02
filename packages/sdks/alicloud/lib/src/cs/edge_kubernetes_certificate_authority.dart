// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeKubernetesCertificateAuthority {
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  final pulumi.Input<String>? clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  final pulumi.Input<String>? clientKey;
  /// The base64 encoded cluster certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
  final pulumi.Input<String>? clusterCert;

  /// Creates a new [EdgeKubernetesCertificateAuthority].
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCert] The base64 encoded cluster certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
  EdgeKubernetesCertificateAuthority({
    this.clientCert,
    this.clientKey,
    this.clusterCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCert': ?clusterCert,
    };
  }

  factory EdgeKubernetesCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesCertificateAuthority(
      clientCert: map['clientCert'] == null ? null : (map['clientCert']! as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey']! as String).input(),
      clusterCert: map['clusterCert'] == null ? null : (map['clusterCert']! as String).input(),
    );
  }
}

