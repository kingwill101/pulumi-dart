// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git repository property payload for config server
class GitPatternRepositoryResponse {
  /// Public sshKey of git repository.
  final pulumi.Input<String>? hostKey;
  /// SshKey algorithm of git repository.
  final pulumi.Input<String>? hostKeyAlgorithm;
  /// Label of the repository
  final pulumi.Input<String>? label;
  /// Name of the repository
  final pulumi.Input<String> name;
  /// Password of git repository basic auth.
  final pulumi.Input<String>? password;
  /// Collection of pattern of the repository
  final pulumi.Input<List<String>>? pattern;
  /// Private sshKey algorithm of git repository.
  final pulumi.Input<String>? privateKey;
  /// Searching path of the repository
  final pulumi.Input<List<String>>? searchPaths;
  /// Strict host key checking or not.
  final pulumi.Input<bool>? strictHostKeyChecking;
  /// URI of the repository
  final pulumi.Input<String> uri;
  /// Username of git repository basic auth.
  final pulumi.Input<String>? username;

  /// Creates a new [GitPatternRepositoryResponse].
  /// [hostKey] Public sshKey of git repository.
  /// [hostKeyAlgorithm] SshKey algorithm of git repository.
  /// [label] Label of the repository
  /// [name] Name of the repository
  /// [password] Password of git repository basic auth.
  /// [pattern] Collection of pattern of the repository
  /// [privateKey] Private sshKey algorithm of git repository.
  /// [searchPaths] Searching path of the repository
  /// [strictHostKeyChecking] Strict host key checking or not.
  /// [uri] URI of the repository
  /// [username] Username of git repository basic auth.
  GitPatternRepositoryResponse({
    this.hostKey,
    this.hostKeyAlgorithm,
    this.label,
    required this.name,
    this.password,
    this.pattern,
    this.privateKey,
    this.searchPaths,
    this.strictHostKeyChecking,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'label': ?label,
      'name': name,
      'password': ?password,
      'pattern': ?pattern,
      'privateKey': ?privateKey,
      'searchPaths': ?searchPaths,
      'strictHostKeyChecking': ?strictHostKeyChecking,
      'uri': uri,
      'username': ?username,
    };
  }

  factory GitPatternRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return GitPatternRepositoryResponse(
      hostKey: map['hostKey'] == null ? null : (map['hostKey']! as String).input(),
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : (map['hostKeyAlgorithm']! as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      name: (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      pattern: map['pattern'] == null ? null : ((map['pattern']! as List).cast<String>()).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      searchPaths: map['searchPaths'] == null ? null : ((map['searchPaths']! as List).cast<String>()).input(),
      strictHostKeyChecking: map['strictHostKeyChecking'] == null ? null : (map['strictHostKeyChecking']! as bool).input(),
      uri: (map['uri'] as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

