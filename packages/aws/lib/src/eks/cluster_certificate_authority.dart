// ignore_for_file: unused_element, unnecessary_cast

class ClusterCertificateAuthority {
  /// Base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the `kubeconfig` file for your cluster.
  final String? data;

  /// Creates a new [ClusterCertificateAuthority].
  /// [data] Base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the `kubeconfig` file for your cluster.
  ClusterCertificateAuthority({this.data});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'data': ?data};
  }

  factory ClusterCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return ClusterCertificateAuthority(
      data: map['data'] == null ? null : map['data'] as String,
    );
  }
}
