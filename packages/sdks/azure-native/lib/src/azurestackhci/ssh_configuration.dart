// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key.dart';

/// SSH configuration for Linux based VMs running on Azure
class SshConfiguration {
  /// The list of SSH public keys used to authenticate with linux based VMs.
  final pulumi.Input<List<SshPublicKey>>? publicKeys;

  /// Creates a new [SshConfiguration].
  /// [publicKeys] The list of SSH public keys used to authenticate with linux based VMs.
  SshConfiguration({this.publicKeys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<SshPublicKey>,
            List<Map<String, dynamic>>
          >(
            publicKeys,
            (value) =>
                pulumi.Input.encodeList<SshPublicKey, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory SshConfiguration.fromMap(Map<String, dynamic> map) {
    return SshConfiguration(
      publicKeys: (() {
        final guardedValue = map['publicKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SshPublicKey>(
            guardedValue,
            (value) =>
                SshPublicKey.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
