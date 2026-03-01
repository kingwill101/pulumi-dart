// ignore_for_file: unused_element, unnecessary_cast


/// Properties for a Git repository catalog.
class GitCatalog {
  /// Git branch.
  final String? branch;
  /// The folder where the catalog items can be found inside the repository.
  final String? path;
  /// A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  final String? secretIdentifier;
  /// Git URI.
  final String? uri;

  /// Creates a new [GitCatalog].
  /// [branch] Git branch.
  /// [path] The folder where the catalog items can be found inside the repository.
  /// [secretIdentifier] A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  /// [uri] Git URI.
  GitCatalog({
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

  factory GitCatalog.fromMap(Map<String, dynamic> map) {
    return GitCatalog(
      branch: map['branch'] == null ? null : map['branch'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      secretIdentifier: map['secretIdentifier'] == null ? null : map['secretIdentifier'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

