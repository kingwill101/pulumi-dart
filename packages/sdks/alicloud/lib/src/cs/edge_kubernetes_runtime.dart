// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeKubernetesRuntime {
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

