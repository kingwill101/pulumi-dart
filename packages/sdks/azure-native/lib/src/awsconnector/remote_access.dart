// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RemoteAccess
class RemoteAccess {
  /// Property ec2SshKey
  final pulumi.Input<String>? ec2SshKey;
  /// Property sourceSecurityGroups
  final pulumi.Input<List<String>>? sourceSecurityGroups;

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
      ec2SshKey: (() { final guardedValue = map['ec2SshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSecurityGroups: (() { final guardedValue = map['sourceSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

