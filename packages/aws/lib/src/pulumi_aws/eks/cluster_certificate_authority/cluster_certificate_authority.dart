// ignore_for_file: unused_element, unnecessary_cast

class ClusterCertificateAuthority {
  /// Base64 encoded certificate data required to communicate with your cluster. Add this to the `certificate-authority-data` section of the <span pulumi-lang-nodejs="`kubeconfig`" pulumi-lang-dotnet="`Kubeconfig`" pulumi-lang-go="`kubeconfig`" pulumi-lang-python="`kubeconfig`" pulumi-lang-yaml="`kubeconfig`" pulumi-lang-java="`kubeconfig`">`kubeconfig`</span> file for your cluster.
  final String? data;

  ClusterCertificateAuthority({
    this.data,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    return map;
  }

  factory ClusterCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return ClusterCertificateAuthority(
      data: map['data'] == null ? null : map['data'] as String,
    );
  }
}
