// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudCustomizedAcceleratorGitRepositorySshAuth {
  /// Specifies the Public SSH Key of git repository basic auth.
  final String? hostKey;
  /// Specifies the SSH Key algorithm of git repository basic auth.
  final String? hostKeyAlgorithm;
  /// Specifies the Private SSH Key of git repository basic auth.
  final String privateKey;

  /// Creates a new [SpringCloudCustomizedAcceleratorGitRepositorySshAuth].
  /// [hostKey] Specifies the Public SSH Key of git repository basic auth.
  /// [hostKeyAlgorithm] Specifies the SSH Key algorithm of git repository basic auth.
  /// [privateKey] Specifies the Private SSH Key of git repository basic auth.
  SpringCloudCustomizedAcceleratorGitRepositorySshAuth({
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'privateKey': privateKey,
    };
  }

  factory SpringCloudCustomizedAcceleratorGitRepositorySshAuth.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomizedAcceleratorGitRepositorySshAuth(
      hostKey: map['hostKey'] == null ? null : map['hostKey'] as String,
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : map['hostKeyAlgorithm'] as String,
      privateKey: map['privateKey'] as String,
    );
  }
}

