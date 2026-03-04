// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_profile_properties_response_public_keys.dart';

/// SSH - SSH configuration for Linux-based VMs running on Azure.
class LinuxProfilePropertiesResponseSsh {
  /// PublicKeys - The list of SSH public keys used to authenticate with Linux-based VMs. Only expect one key specified.
  final pulumi.Input<List<LinuxProfilePropertiesResponsePublicKeys>>?
  publicKeys;

  /// Creates a new [LinuxProfilePropertiesResponseSsh].
  /// [publicKeys] PublicKeys - The list of SSH public keys used to authenticate with Linux-based VMs. Only expect one key specified.
  LinuxProfilePropertiesResponseSsh({this.publicKeys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinuxProfilePropertiesResponsePublicKeys>,
            List<Map<String, dynamic>>
          >(
            publicKeys,
            (value) =>
                pulumi.Input.encodeList<
                  LinuxProfilePropertiesResponsePublicKeys,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LinuxProfilePropertiesResponseSsh.fromMap(Map<String, dynamic> map) {
    return LinuxProfilePropertiesResponseSsh(
      publicKeys: (() {
        final guardedValue = map['publicKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LinuxProfilePropertiesResponsePublicKeys>(
            guardedValue,
            (value) => LinuxProfilePropertiesResponsePublicKeys.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
