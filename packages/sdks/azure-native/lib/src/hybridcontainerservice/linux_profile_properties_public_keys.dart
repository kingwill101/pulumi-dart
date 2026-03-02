// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxProfilePropertiesPublicKeys {
  /// KeyData - Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  final pulumi.Input<String>? keyData;

  /// Creates a new [LinuxProfilePropertiesPublicKeys].
  /// [keyData] KeyData - Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  LinuxProfilePropertiesPublicKeys({
    this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?keyData,
    };
  }

  factory LinuxProfilePropertiesPublicKeys.fromMap(Map<String, dynamic> map) {
    return LinuxProfilePropertiesPublicKeys(
      keyData: map['keyData'] == null ? null : (map['keyData']! as String).input(),
    );
  }
}

