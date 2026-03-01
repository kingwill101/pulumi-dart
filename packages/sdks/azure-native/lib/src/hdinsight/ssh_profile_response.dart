// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_response.dart';

/// The list of SSH public keys.
class SshProfileResponse {
  /// The list of SSH public keys.
  final List<SshPublicKeyResponse>? publicKeys;

  /// Creates a new [SshProfileResponse].
  /// [publicKeys] The list of SSH public keys.
  SshProfileResponse({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?publicKeys == null ? null : pulumi.Input.encodeList<SshPublicKeyResponse, Map<String, dynamic>>(publicKeys!, (value) => value.toMap()),
    };
  }

  factory SshProfileResponse.fromMap(Map<String, dynamic> map) {
    return SshProfileResponse(
      publicKeys: map['publicKeys'] == null ? null : pulumi.Input.decodeList<SshPublicKeyResponse>(map['publicKeys'], (value) => SshPublicKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

