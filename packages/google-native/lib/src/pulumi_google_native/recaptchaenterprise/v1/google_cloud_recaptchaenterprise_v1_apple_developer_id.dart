// ignore_for_file: unused_element, unnecessary_cast

/// Contains fields that are required to perform Apple-specific integrity checks.
class GoogleCloudRecaptchaenterpriseV1AppleDeveloperId {
  /// The Apple developer key ID (10-character string).
  final String keyId;

  /// Input only. A private key (downloaded as a text file with a .p8 file extension) generated for your Apple Developer account. Ensure that Apple DeviceCheck is enabled for the private key.
  final String privateKey;

  /// The Apple team ID (10-character string) owning the provisioning profile used to build your application.
  final String teamId;

  GoogleCloudRecaptchaenterpriseV1AppleDeveloperId({
    required this.keyId,
    required this.privateKey,
    required this.teamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['privateKey'] = privateKey;
    map['teamId'] = teamId;
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1AppleDeveloperId.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1AppleDeveloperId(
      keyId: map['keyId'] as String,
      privateKey: map['privateKey'] as String,
      teamId: map['teamId'] as String,
    );
  }
}
