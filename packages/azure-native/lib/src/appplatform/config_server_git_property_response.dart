// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_pattern_repository_response.dart';

/// Property of git.
class ConfigServerGitPropertyResponse {
  /// Public sshKey of git repository.
  final String? hostKey;
  /// SshKey algorithm of git repository.
  final String? hostKeyAlgorithm;
  /// Label of the repository
  final String? label;
  /// Password of git repository basic auth.
  final String? password;
  /// Private sshKey algorithm of git repository.
  final String? privateKey;
  /// Repositories of git.
  final List<GitPatternRepositoryResponse>? repositories;
  /// Searching path of the repository
  final List<String>? searchPaths;
  /// Strict host key checking or not.
  final bool? strictHostKeyChecking;
  /// URI of the repository
  final String uri;
  /// Username of git repository basic auth.
  final String? username;

  /// Creates a new [ConfigServerGitPropertyResponse].
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
  ConfigServerGitPropertyResponse({
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
      'repositories': ?repositories == null ? null : pulumi.Input.encodeList<GitPatternRepositoryResponse, Map<String, dynamic>>(repositories!, (value) => value.toMap()),
      'searchPaths': ?searchPaths,
      'strictHostKeyChecking': ?strictHostKeyChecking,
      'uri': uri,
      'username': ?username,
    };
  }

  factory ConfigServerGitPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ConfigServerGitPropertyResponse(
      hostKey: map['hostKey'] == null ? null : map['hostKey'] as String,
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : map['hostKeyAlgorithm'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      repositories: map['repositories'] == null ? null : pulumi.Input.decodeList<GitPatternRepositoryResponse>(map['repositories'], (value) => GitPatternRepositoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      searchPaths: map['searchPaths'] == null ? null : (map['searchPaths'] as List).cast<String>(),
      strictHostKeyChecking: map['strictHostKeyChecking'] == null ? null : map['strictHostKeyChecking'] as bool,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

