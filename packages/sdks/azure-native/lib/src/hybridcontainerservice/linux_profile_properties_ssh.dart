// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_profile_properties_public_keys.dart';

/// SSH - SSH configuration for Linux-based VMs running on Azure.
class LinuxProfilePropertiesSsh {
  /// PublicKeys - The list of SSH public keys used to authenticate with Linux-based VMs. Only expect one key specified.
  final pulumi.Input<List<LinuxProfilePropertiesPublicKeys>>? publicKeys;

  /// Creates a new [LinuxProfilePropertiesSsh].
  /// [publicKeys] PublicKeys - The list of SSH public keys used to authenticate with Linux-based VMs. Only expect one key specified.
  LinuxProfilePropertiesSsh({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<LinuxProfilePropertiesPublicKeys>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<LinuxProfilePropertiesPublicKeys, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LinuxProfilePropertiesSsh.fromMap(Map<String, dynamic> map) {
    return LinuxProfilePropertiesSsh(
      publicKeys: map['publicKeys'] == null ? null : (pulumi.Input.decodeList<LinuxProfilePropertiesPublicKeys>(map['publicKeys']!, (value) => LinuxProfilePropertiesPublicKeys.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

