// ignore_for_file: unused_element, unnecessary_cast


class LinuxProfilePropertiesResponsePublicKeys {
  /// KeyData - Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  final String? keyData;

  /// Creates a new [LinuxProfilePropertiesResponsePublicKeys].
  /// [keyData] KeyData - Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  LinuxProfilePropertiesResponsePublicKeys({
    this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?keyData,
    };
  }

  factory LinuxProfilePropertiesResponsePublicKeys.fromMap(Map<String, dynamic> map) {
    return LinuxProfilePropertiesResponsePublicKeys(
      keyData: map['keyData'] == null ? null : map['keyData'] as String,
    );
  }
}

