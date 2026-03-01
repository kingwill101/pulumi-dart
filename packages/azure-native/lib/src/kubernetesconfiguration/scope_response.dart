// ignore_for_file: unused_element, unnecessary_cast

import 'scope_cluster_response.dart';
import 'scope_namespace_response.dart';

/// Scope of the extension. It can be either Cluster or Namespace; but not both.
class ScopeResponse {
  /// Specifies that the scope of the extension is Cluster
  final ScopeClusterResponse? cluster;
  /// Specifies that the scope of the extension is Namespace
  final ScopeNamespaceResponse? namespace;

  /// Creates a new [ScopeResponse].
  /// [cluster] Specifies that the scope of the extension is Cluster
  /// [namespace] Specifies that the scope of the extension is Namespace
  ScopeResponse({
    this.cluster,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster == null ? null : cluster!.toMap(),
      'namespace': ?namespace == null ? null : namespace!.toMap(),
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      cluster: map['cluster'] == null ? null : ScopeClusterResponse.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      namespace: map['namespace'] == null ? null : ScopeNamespaceResponse.fromMap((map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}

