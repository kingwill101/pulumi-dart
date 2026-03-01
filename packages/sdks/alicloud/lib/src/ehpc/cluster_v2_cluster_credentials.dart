// ignore_for_file: unused_element, unnecessary_cast


class ClusterV2ClusterCredentials {
  /// The SSH key of root of the cluster node.
  final String? keyPairName;
  /// The root password of the cluster node. It is 8 to 20 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be: () ~! @ # $ % ^ & * - = + { } [ ] : ; ',. ? /
  final String? password;

  /// Creates a new [ClusterV2ClusterCredentials].
  /// [keyPairName] The SSH key of root of the cluster node.
  /// [password] The root password of the cluster node. It is 8 to 20 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be: () ~! @ # $ % ^ & * - = + { } [ ] : ; ',. ? /
  ClusterV2ClusterCredentials({
    this.keyPairName,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': ?keyPairName,
      'password': ?password,
    };
  }

  factory ClusterV2ClusterCredentials.fromMap(Map<String, dynamic> map) {
    return ClusterV2ClusterCredentials(
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

