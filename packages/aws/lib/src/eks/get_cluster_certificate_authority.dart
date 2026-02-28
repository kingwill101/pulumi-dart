// ignore_for_file: unused_element, unnecessary_cast

class GetClusterCertificateAuthority {
  /// The base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the `kubeconfig` file for your cluster.
  final String data;

  /// Creates a new [GetClusterCertificateAuthority].
  /// [data] The base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the `kubeconfig` file for your cluster.
  GetClusterCertificateAuthority({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    return map;
  }

  factory GetClusterCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return GetClusterCertificateAuthority(
      data: map['data'] as String,
    );
  }
}
