// ignore_for_file: unused_element, unnecessary_cast


class ComputeInstanceSsh {
  /// Describes the port for connecting through SSH.
  final int? port;
  /// Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  final String publicKey;
  /// The admin username of this Machine Learning Compute Instance.
  final String? username;

  /// Creates a new [ComputeInstanceSsh].
  /// [port] Describes the port for connecting through SSH.
  /// [publicKey] Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  /// [username] The admin username of this Machine Learning Compute Instance.
  ComputeInstanceSsh({
    this.port,
    required this.publicKey,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'publicKey': publicKey,
      'username': ?username,
    };
  }

  factory ComputeInstanceSsh.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceSsh(
      port: map['port'] == null ? null : map['port'] as int,
      publicKey: map['publicKey'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

