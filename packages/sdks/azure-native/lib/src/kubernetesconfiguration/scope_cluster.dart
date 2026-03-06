// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies that the scope of the extension is Cluster
class ScopeCluster {
  /// Namespace where the extension Release must be placed, for a Cluster scoped extension.  If this namespace does not exist, it will be created
  final pulumi.Input<String>? releaseNamespace;

  /// Creates a new [ScopeCluster].
  /// [releaseNamespace] Namespace where the extension Release must be placed, for a Cluster scoped extension.  If this namespace does not exist, it will be created
  const ScopeCluster({
    this.releaseNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseNamespace': ?releaseNamespace,
    };
  }

  factory ScopeCluster.fromMap(Map<String, dynamic> map) {
    return ScopeCluster(
      releaseNamespace: (() { final guardedValue = map['releaseNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

