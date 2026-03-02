// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_cluster.dart';
import 'scope_namespace.dart';

/// Scope of the extension. It can be either Cluster or Namespace; but not both.
class Scope {
  /// Specifies that the scope of the extension is Cluster
  final pulumi.Input<ScopeCluster>? cluster;
  /// Specifies that the scope of the extension is Namespace
  final pulumi.Input<ScopeNamespace>? namespace;

  /// Creates a new [Scope].
  /// [cluster] Specifies that the scope of the extension is Cluster
  /// [namespace] Specifies that the scope of the extension is Namespace
  Scope({
    this.cluster,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?pulumi.Input.mapOptionalInputValue<ScopeCluster, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'namespace': ?pulumi.Input.mapOptionalInputValue<ScopeNamespace, Map<String, dynamic>>(namespace, (value) => value.toMap()),
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      cluster: map['cluster'] == null ? null : (ScopeCluster.fromMap((map['cluster'] as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : (ScopeNamespace.fromMap((map['namespace'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

