// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key.dart';

/// The list of SSH public keys.
class SshProfile {
  /// The list of SSH public keys.
  final pulumi.Input<List<SshPublicKey>?>? publicKeys;

  /// Creates a new [SshProfile].
  /// [publicKeys] The list of SSH public keys.
  const SshProfile({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<SshPublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<SshPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SshProfile.fromMap(Map<String, dynamic> map) {
    return SshProfile(
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SshPublicKey>(guardedValue, (value) => SshPublicKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
