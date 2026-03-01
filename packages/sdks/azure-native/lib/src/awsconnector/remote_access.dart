// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RemoteAccess
class RemoteAccess {
  /// Property ec2SshKey
  final String? ec2SshKey;
  /// Property sourceSecurityGroups
  final List<String>? sourceSecurityGroups;

  /// Creates a new [RemoteAccess].
  /// [ec2SshKey] Property ec2SshKey
  /// [sourceSecurityGroups] Property sourceSecurityGroups
  RemoteAccess({
    this.ec2SshKey,
    this.sourceSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2SshKey': ?ec2SshKey,
      'sourceSecurityGroups': ?sourceSecurityGroups,
    };
  }

  factory RemoteAccess.fromMap(Map<String, dynamic> map) {
    return RemoteAccess(
      ec2SshKey: map['ec2SshKey'] == null ? null : map['ec2SshKey'] as String,
      sourceSecurityGroups: map['sourceSecurityGroups'] == null ? null : (map['sourceSecurityGroups'] as List).cast<String>(),
    );
  }
}

