// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Git repository property payload for config server
class GitPatternRepository {
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

  /// Creates a new [GitPatternRepository].
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
  const GitPatternRepository({
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

  factory GitPatternRepository.fromMap(Map<String, dynamic> map) {
    return GitPatternRepository(
      hostKey: (() { final guardedValue = map['hostKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKeyAlgorithm: (() { final guardedValue = map['hostKeyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchPaths: (() { final guardedValue = map['searchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      strictHostKeyChecking: (() { final guardedValue = map['strictHostKeyChecking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

