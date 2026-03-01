// ignore_for_file: unused_element, unnecessary_cast


class KubernetesRuntime {
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

  /// Creates a new [KubernetesRuntime].
  /// [name] The name of the runtime. Supported runtimes can be queried by data source alicloud_cs_kubernetes_version.
  /// [version] The version of the runtime.
  KubernetesRuntime({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory KubernetesRuntime.fromMap(Map<String, dynamic> map) {
    return KubernetesRuntime(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

