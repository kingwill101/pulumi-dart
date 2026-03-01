// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RemoteAccess
class RemoteAccessResponse {
  /// Property ec2SshKey
  final String? ec2SshKey;
  /// Property sourceSecurityGroups
  final List<String>? sourceSecurityGroups;

  /// Creates a new [RemoteAccessResponse].
  /// [ec2SshKey] Property ec2SshKey
  /// [sourceSecurityGroups] Property sourceSecurityGroups
  RemoteAccessResponse({
    this.ec2SshKey,
    this.sourceSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ec2SshKey': ?ec2SshKey,
      'sourceSecurityGroups': ?sourceSecurityGroups,
    };
  }

  factory RemoteAccessResponse.fromMap(Map<String, dynamic> map) {
    return RemoteAccessResponse(
      ec2SshKey: map['ec2SshKey'] == null ? null : map['ec2SshKey'] as String,
      sourceSecurityGroups: map['sourceSecurityGroups'] == null ? null : (map['sourceSecurityGroups'] as List).cast<String>(),
    );
  }
}

