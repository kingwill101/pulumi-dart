// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties used to create a user account on a Linux node.
class LinuxUserConfigurationResponse {
  /// The uid and gid properties must be specified together or not at all. If not specified the underlying operating system picks the gid.
  final pulumi.Input<int>? gid;
  /// The private key must not be password protected. The private key is used to automatically configure asymmetric-key based authentication for SSH between nodes in a Linux pool when the pool's enableInterNodeCommunication property is true (it is ignored if enableInterNodeCommunication is false). It does this by placing the key pair into the user's .ssh directory. If not specified, password-less SSH is not configured between nodes (no modification of the user's .ssh directory is done).
  final pulumi.Input<String>? sshPrivateKey;
  /// The uid and gid properties must be specified together or not at all. If not specified the underlying operating system picks the uid.
  final pulumi.Input<int>? uid;

  /// Creates a new [LinuxUserConfigurationResponse].
  /// [gid] The uid and gid properties must be specified together or not at all. If not specified the underlying operating system picks the gid.
  /// [sshPrivateKey] The private key must not be password protected. The private key is used to automatically configure asymmetric-key based authentication for SSH between nodes in a Linux pool when the pool's enableInterNodeCommunication property is true (it is ignored if enableInterNodeCommunication is false). It does this by placing the key pair into the user's .ssh directory. If not specified, password-less SSH is not configured between nodes (no modification of the user's .ssh directory is done).
  /// [uid] The uid and gid properties must be specified together or not at all. If not specified the underlying operating system picks the uid.
  LinuxUserConfigurationResponse({
    this.gid,
    this.sshPrivateKey,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': ?gid,
      'sshPrivateKey': ?sshPrivateKey,
      'uid': ?uid,
    };
  }

  factory LinuxUserConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LinuxUserConfigurationResponse(
      gid: map['gid'] == null ? null : (map['gid'] as int).input(),
      sshPrivateKey: map['sshPrivateKey'] == null ? null : (map['sshPrivateKey'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as int).input(),
    );
  }
}

