// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_pattern_repository.dart';

/// Property of git.
class ConfigServerGitProperty {
  /// Public sshKey of git repository.
  final pulumi.Input<String>? hostKey;
  /// SshKey algorithm of git repository.
  final pulumi.Input<String>? hostKeyAlgorithm;
  /// Label of the repository
  final pulumi.Input<String>? label;
  /// Password of git repository basic auth.
  final pulumi.Input<String>? password;
  /// Private sshKey algorithm of git repository.
  final pulumi.Input<String>? privateKey;
  /// Repositories of git.
  final pulumi.Input<List<GitPatternRepository>>? repositories;
  /// Searching path of the repository
  final pulumi.Input<List<String>>? searchPaths;
  /// Strict host key checking or not.
  final pulumi.Input<bool>? strictHostKeyChecking;
  /// URI of the repository
  final pulumi.Input<String> uri;
  /// Username of git repository basic auth.
  final pulumi.Input<String>? username;

  /// Creates a new [ConfigServerGitProperty].
  /// [hostKey] Public sshKey of git repository.
  /// [hostKeyAlgorithm] SshKey algorithm of git repository.
  /// [label] Label of the repository
  /// [password] Password of git repository basic auth.
  /// [privateKey] Private sshKey algorithm of git repository.
  /// [repositories] Repositories of git.
  /// [searchPaths] Searching path of the repository
  /// [strictHostKeyChecking] Strict host key checking or not.
  /// [uri] URI of the repository
  /// [username] Username of git repository basic auth.
  const ConfigServerGitProperty({
    this.hostKey,
    this.hostKeyAlgorithm,
    this.label,
    this.password,
    this.privateKey,
    this.repositories,
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
      'password': ?password,
      'privateKey': ?privateKey,
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<GitPatternRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<GitPatternRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searchPaths': ?searchPaths,
      'strictHostKeyChecking': ?strictHostKeyChecking,
      'uri': uri,
      'username': ?username,
    };
  }

  factory ConfigServerGitProperty.fromMap(Map<String, dynamic> map) {
    return ConfigServerGitProperty(
      hostKey: (() { final guardedValue = map['hostKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKeyAlgorithm: (() { final guardedValue = map['hostKeyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GitPatternRepository>(guardedValue, (value) => GitPatternRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      searchPaths: (() { final guardedValue = map['searchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      strictHostKeyChecking: (() { final guardedValue = map['strictHostKeyChecking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
