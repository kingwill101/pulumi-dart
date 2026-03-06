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
  const GitCatalog({
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
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretIdentifier: (() { final guardedValue = map['secretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

