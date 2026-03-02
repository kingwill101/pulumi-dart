// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for a Git repository catalog.
class GitCatalog {
  /// Git branch.
  final pulumi.Input<String>? branch;
  /// The folder where the catalog items can be found inside the repository.
  final pulumi.Input<String>? path;
  /// A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  final pulumi.Input<String>? secretIdentifier;
  /// Git URI.
  final pulumi.Input<String>? uri;

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
      branch: map['branch'] == null ? null : (map['branch']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      secretIdentifier: map['secretIdentifier'] == null ? null : (map['secretIdentifier']! as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

