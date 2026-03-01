// ignore_for_file: unused_element, unnecessary_cast

class ClusterDatabaseEncryption {
  /// the key to use to encrypt/decrypt secrets.  See the [DatabaseEncryption definition](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#Cluster.DatabaseEncryption) for more information.
  ///
  /// <a name="nested_enable_k8s_beta_apis"></a>The `enable_k8s_beta_apis` block supports:
  final String? keyName;

  /// `ENCRYPTED` or `DECRYPTED`
  final String state;

  /// Creates a new [ClusterDatabaseEncryption].
  /// [keyName] the key to use to encrypt/decrypt secrets.  See the [DatabaseEncryption definition](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#Cluster.DatabaseEncryption) for more information.
  /// [state] `ENCRYPTED` or `DECRYPTED`
  ClusterDatabaseEncryption({this.keyName, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyName': ?keyName, 'state': state};
  }

  factory ClusterDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterDatabaseEncryption(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      state: map['state'] as String,
    );
  }
}
