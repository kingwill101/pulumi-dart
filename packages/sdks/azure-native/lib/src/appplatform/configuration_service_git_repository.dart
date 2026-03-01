// ignore_for_file: unused_element, unnecessary_cast


/// Git repository property payload for Application Configuration Service
class ConfigurationServiceGitRepository {
  /// Resource Id of CA certificate for https URL of Git repository.
  final String? caCertResourceId;
  /// Git libraries used to support various repository providers
  final String? gitImplementation;
  /// Public sshKey of git repository.
  final String? hostKey;
  /// SshKey algorithm of git repository.
  final String? hostKeyAlgorithm;
  /// Label of the repository
  final String label;
  /// Name of the repository
  final String name;
  /// Password of git repository basic auth.
  final String? password;
  /// Collection of patterns of the repository
  final List<String> patterns;
  /// Private sshKey algorithm of git repository.
  final String? privateKey;
  /// Searching path of the repository
  final List<String>? searchPaths;
  /// Strict host key checking or not.
  final bool? strictHostKeyChecking;
  /// URI of the repository
  final String uri;
  /// Username of git repository basic auth.
  final String? username;

  /// Creates a new [ConfigurationServiceGitRepository].
  /// [caCertResourceId] Resource Id of CA certificate for https URL of Git repository.
  /// [gitImplementation] Git libraries used to support various repository providers
  /// [hostKey] Public sshKey of git repository.
  /// [hostKeyAlgorithm] SshKey algorithm of git repository.
  /// [label] Label of the repository
  /// [name] Name of the repository
  /// [password] Password of git repository basic auth.
  /// [patterns] Collection of patterns of the repository
  /// [privateKey] Private sshKey algorithm of git repository.
  /// [searchPaths] Searching path of the repository
  /// [strictHostKeyChecking] Strict host key checking or not.
  /// [uri] URI of the repository
  /// [username] Username of git repository basic auth.
  ConfigurationServiceGitRepository({
    this.caCertResourceId,
    this.gitImplementation,
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.label,
    required this.name,
    this.password,
    required this.patterns,
    this.privateKey,
    this.searchPaths,
    this.strictHostKeyChecking,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertResourceId': ?caCertResourceId,
      'gitImplementation': ?gitImplementation,
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'label': label,
      'name': name,
      'password': ?password,
      'patterns': patterns,
      'privateKey': ?privateKey,
      'searchPaths': ?searchPaths,
      'strictHostKeyChecking': ?strictHostKeyChecking,
      'uri': uri,
      'username': ?username,
    };
  }

  factory ConfigurationServiceGitRepository.fromMap(Map<String, dynamic> map) {
    return ConfigurationServiceGitRepository(
      caCertResourceId: map['caCertResourceId'] == null ? null : map['caCertResourceId'] as String,
      gitImplementation: map['gitImplementation'] == null ? null : map['gitImplementation'] as String,
      hostKey: map['hostKey'] == null ? null : map['hostKey'] as String,
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : map['hostKeyAlgorithm'] as String,
      label: map['label'] as String,
      name: map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      patterns: (map['patterns'] as List).cast<String>(),
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      searchPaths: map['searchPaths'] == null ? null : (map['searchPaths'] as List).cast<String>(),
      strictHostKeyChecking: map['strictHostKeyChecking'] == null ? null : map['strictHostKeyChecking'] as bool,
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

