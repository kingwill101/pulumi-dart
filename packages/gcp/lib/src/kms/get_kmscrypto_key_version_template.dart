// ignore_for_file: unused_element, unnecessary_cast

class GetKMSCryptoKeyVersionTemplate {
  /// The algorithm to use when creating a version based on this template.
  /// See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  final String algorithm;

  /// The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  final String protectionLevel;

  /// Creates a new [GetKMSCryptoKeyVersionTemplate].
  /// [algorithm] The algorithm to use when creating a version based on this template.
  /// [protectionLevel] The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  GetKMSCryptoKeyVersionTemplate({
    required this.algorithm,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['protectionLevel'] = protectionLevel;
    return map;
  }

  factory GetKMSCryptoKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyVersionTemplate(
      algorithm: map['algorithm'] as String,
      protectionLevel: map['protectionLevel'] as String,
    );
  }
}
