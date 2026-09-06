// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_response.dart';

/// The list of SSH public keys.
class SshProfileResponse {
  /// The list of SSH public keys.
  final pulumi.Input<List<SshPublicKeyResponse>?>? publicKeys;

  /// Creates a new [SshProfileResponse].
  /// [publicKeys] The list of SSH public keys.
  const SshProfileResponse({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<SshPublicKeyResponse>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<SshPublicKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SshProfileResponse.fromMap(Map<String, dynamic> map) {
    return SshProfileResponse(
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SshPublicKeyResponse>(guardedValue, (value) => SshPublicKeyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
