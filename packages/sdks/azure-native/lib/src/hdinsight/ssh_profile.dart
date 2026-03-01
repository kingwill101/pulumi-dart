// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key.dart';

/// The list of SSH public keys.
class SshProfile {
  /// The list of SSH public keys.
  final List<SshPublicKey>? publicKeys;

  /// Creates a new [SshProfile].
  /// [publicKeys] The list of SSH public keys.
  SshProfile({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?publicKeys == null ? null : pulumi.Input.encodeList<SshPublicKey, Map<String, dynamic>>(publicKeys!, (value) => value.toMap()),
    };
  }

  factory SshProfile.fromMap(Map<String, dynamic> map) {
    return SshProfile(
      publicKeys: map['publicKeys'] == null ? null : pulumi.Input.decodeList<SshPublicKey>(map['publicKeys'], (value) => SshPublicKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

