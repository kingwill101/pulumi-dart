// ignore_for_file: unused_element, unnecessary_cast

class ClusterDatabaseEncryption {
  /// the key to use to encrypt/decrypt secrets.  See the [DatabaseEncryption definition](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#Cluster.DatabaseEncryption) for more information.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedEnableK8sBetaApis"" pulumi-lang-dotnet=""NestedEnableK8sBetaApis"" pulumi-lang-go=""nestedEnableK8sBetaApis"" pulumi-lang-python=""nested_enable_k8s_beta_apis"" pulumi-lang-yaml=""nestedEnableK8sBetaApis"" pulumi-lang-java=""nestedEnableK8sBetaApis"">"nested_enable_k8s_beta_apis"</span>></a>The <span pulumi-lang-nodejs="`enableK8sBetaApis`" pulumi-lang-dotnet="`EnableK8sBetaApis`" pulumi-lang-go="`enableK8sBetaApis`" pulumi-lang-python="`enable_k8s_beta_apis`" pulumi-lang-yaml="`enableK8sBetaApis`" pulumi-lang-java="`enableK8sBetaApis`">`enable_k8s_beta_apis`</span> block supports:
  final String? keyName;

  /// `ENCRYPTED` or `DECRYPTED`
  final String state;

  ClusterDatabaseEncryption({
    this.keyName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    map['state'] = state;
    return map;
  }

  factory ClusterDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterDatabaseEncryption(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      state: map['state'] as String,
    );
  }
}
