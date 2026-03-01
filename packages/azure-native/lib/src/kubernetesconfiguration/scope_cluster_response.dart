// ignore_for_file: unused_element, unnecessary_cast


/// Specifies that the scope of the extension is Cluster
class ScopeClusterResponse {
  /// Namespace where the extension Release must be placed, for a Cluster scoped extension.  If this namespace does not exist, it will be created
  final String? releaseNamespace;

  /// Creates a new [ScopeClusterResponse].
  /// [releaseNamespace] Namespace where the extension Release must be placed, for a Cluster scoped extension.  If this namespace does not exist, it will be created
  ScopeClusterResponse({
    this.releaseNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'releaseNamespace': ?releaseNamespace,
    };
  }

  factory ScopeClusterResponse.fromMap(Map<String, dynamic> map) {
    return ScopeClusterResponse(
      releaseNamespace: map['releaseNamespace'] == null ? null : map['releaseNamespace'] as String,
    );
  }
}

