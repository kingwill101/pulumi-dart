// ignore_for_file: unused_element, unnecessary_cast


class EdgeKubernetesRuntime {
  /// The name of the runtime. Supported runtimes can be queried by data source alicloud_cs_kubernetes_version.
  final String? name;
  /// The version of the runtime.
  ///
  /// The following example is the definition of runtime block:
  ///
  /// ```
  /// runtime = {
  /// name = "containerd"
  /// version = "1.6.28"
  /// }
  /// ```
  final String? version;

  /// Creates a new [EdgeKubernetesRuntime].
  /// [name] The name of the runtime. Supported runtimes can be queried by data source alicloud_cs_kubernetes_version.
  /// [version] The version of the runtime.
  EdgeKubernetesRuntime({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory EdgeKubernetesRuntime.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesRuntime(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

