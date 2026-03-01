// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudConfigurationServiceRepository {
  /// Specifies the ID of the Certificate Authority used when retrieving the Git Repository via HTTPS.
  final String? caCertificateId;
  /// Specifies the SSH public key of git repository.
  final String? hostKey;
  /// Specifies the SSH key algorithm of git repository.
  final String? hostKeyAlgorithm;
  /// Specifies the label of the repository.
  final String label;
  /// Specifies the name which should be used for this repository.
  final String name;
  /// Specifies the password of git repository basic auth.
  final String? password;
  /// Specifies the collection of patterns of the repository.
  final List<String> patterns;
  /// Specifies the SSH private key of git repository.
  final String? privateKey;
  /// Specifies a list of searching path of the repository
  final List<String>? searchPaths;
  /// Specifies whether enable the strict host key checking.
  final bool? strictHostKeyChecking;
  /// Specifies the URI of the repository.
  final String uri;
  /// Specifies the username of git repository basic auth.
  final String? username;

  /// Creates a new [SpringCloudConfigurationServiceRepository].
  /// [caCertificateId] Specifies the ID of the Certificate Authority used when retrieving the Git Repository via HTTPS.
  /// [hostKey] Specifies the SSH public key of git repository.
  /// [hostKeyAlgorithm] Specifies the SSH key algorithm of git repository.
  /// [label] Specifies the label of the repository.
  /// [name] Specifies the name which should be used for this repository.
  /// [password] Specifies the password of git repository basic auth.
  /// [patterns] Specifies the collection of patterns of the repository.
  /// [privateKey] Specifies the SSH private key of git repository.
  /// [searchPaths] Specifies a list of searching path of the repository
  /// [strictHostKeyChecking] Specifies whether enable the strict host key checking.
  /// [uri] Specifies the URI of the repository.
  /// [username] Specifies the username of git repository basic auth.
  SpringCloudConfigurationServiceRepository({
    this.caCertificateId,
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
      'caCertificateId': ?caCertificateId,
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

  factory SpringCloudConfigurationServiceRepository.fromMap(Map<String, dynamic> map) {
    return SpringCloudConfigurationServiceRepository(
      caCertificateId: map['caCertificateId'] == null ? null : map['caCertificateId'] as String,
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

