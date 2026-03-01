// ignore_for_file: unused_element, unnecessary_cast


class ManagedKubernetesCertificateAuthority {
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  final String? clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  final String? clientKey;
  /// The base64 encoded cluster certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
  final String? clusterCert;

  /// Creates a new [ManagedKubernetesCertificateAuthority].
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCert] The base64 encoded cluster certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
  ManagedKubernetesCertificateAuthority({
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

  factory ManagedKubernetesCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesCertificateAuthority(
      clientCert: map['clientCert'] == null ? null : map['clientCert'] as String,
      clientKey: map['clientKey'] == null ? null : map['clientKey'] as String,
      clusterCert: map['clusterCert'] == null ? null : map['clusterCert'] as String,
    );
  }
}

