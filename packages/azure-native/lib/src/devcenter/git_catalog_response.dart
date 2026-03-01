// ignore_for_file: unused_element, unnecessary_cast


/// Properties for a Git repository catalog.
class GitCatalogResponse {
  /// Git branch.
  final String? branch;
  /// The folder where the catalog items can be found inside the repository.
  final String? path;
  /// A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  final String? secretIdentifier;
  /// Git URI.
  final String? uri;

  /// Creates a new [GitCatalogResponse].
  /// [branch] Git branch.
  /// [path] The folder where the catalog items can be found inside the repository.
  /// [secretIdentifier] A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  /// [uri] Git URI.
  GitCatalogResponse({
    this.branch,
    this.path,
    this.secretIdentifier,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'path': ?path,
      'secretIdentifier': ?secretIdentifier,
      'uri': ?uri,
    };
  }

  factory GitCatalogResponse.fromMap(Map<String, dynamic> map) {
    return GitCatalogResponse(
      branch: map['branch'] == null ? null : map['branch'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      secretIdentifier: map['secretIdentifier'] == null ? null : map['secretIdentifier'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

