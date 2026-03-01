// ignore_for_file: unused_element, unnecessary_cast

import 'scope_cluster.dart';
import 'scope_namespace.dart';

/// Scope of the extension. It can be either Cluster or Namespace; but not both.
class Scope {
  /// Specifies that the scope of the extension is Cluster
  final ScopeCluster? cluster;
  /// Specifies that the scope of the extension is Namespace
  final ScopeNamespace? namespace;

  /// Creates a new [Scope].
  /// [cluster] Specifies that the scope of the extension is Cluster
  /// [namespace] Specifies that the scope of the extension is Namespace
  Scope({
    this.cluster,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster == null ? null : cluster!.toMap(),
      'namespace': ?namespace == null ? null : namespace!.toMap(),
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      cluster: map['cluster'] == null ? null : ScopeCluster.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      namespace: map['namespace'] == null ? null : ScopeNamespace.fromMap((map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}

