// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_cluster_response.dart';
import 'scope_namespace_response.dart';

/// Scope of the extension. It can be either Cluster or Namespace; but not both.
class ScopeResponse {
  /// Specifies that the scope of the extension is Cluster
  final pulumi.Input<ScopeClusterResponse?>? cluster;
  /// Specifies that the scope of the extension is Namespace
  final pulumi.Input<ScopeNamespaceResponse?>? namespace;

  /// Creates a new [ScopeResponse].
  /// [cluster] Specifies that the scope of the extension is Cluster
  /// [namespace] Specifies that the scope of the extension is Namespace
  const ScopeResponse({
    this.cluster,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?pulumi.Input.mapOptionalInputValue<ScopeClusterResponse, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'namespace': ?pulumi.Input.mapOptionalInputValue<ScopeNamespaceResponse, Map<String, dynamic>>(namespace, (value) => value.toMap()),
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScopeNamespaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
