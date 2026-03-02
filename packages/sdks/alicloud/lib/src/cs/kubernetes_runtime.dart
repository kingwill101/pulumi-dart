// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesRuntime {
  /// The name of the runtime. Supported runtimes can be queried by data source alicloud_cs_kubernetes_version.
  final pulumi.Input<String>? name;
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
  final pulumi.Input<String>? version;

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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

