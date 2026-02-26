// ignore_for_file: unused_element, unnecessary_cast

class GetClusterCertificateAuthority {
  /// The base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the <span pulumi-lang-nodejs="`kubeconfig`" pulumi-lang-dotnet="`Kubeconfig`" pulumi-lang-go="`kubeconfig`" pulumi-lang-python="`kubeconfig`" pulumi-lang-yaml="`kubeconfig`" pulumi-lang-java="`kubeconfig`">`kubeconfig`</span> file for your cluster.
  final String data;

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
