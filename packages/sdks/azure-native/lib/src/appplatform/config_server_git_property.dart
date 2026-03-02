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
  ConfigServerGitProperty({
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
      hostKey: map['hostKey'] == null ? null : (map['hostKey'] as String).input(),
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : (map['hostKeyAlgorithm'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      repositories: map['repositories'] == null ? null : (pulumi.Input.decodeList<GitPatternRepository>(map['repositories'], (value) => GitPatternRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      searchPaths: map['searchPaths'] == null ? null : ((map['searchPaths'] as List).cast<String>()).input(),
      strictHostKeyChecking: map['strictHostKeyChecking'] == null ? null : (map['strictHostKeyChecking'] as bool).input(),
      uri: (map['uri'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

