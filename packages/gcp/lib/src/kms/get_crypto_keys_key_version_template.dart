// ignore_for_file: unused_element, unnecessary_cast

class GetCryptoKeysKeyVersionTemplate {
  /// The algorithm to use when creating a version based on this template.
  /// See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs.
  final String algorithm;

  /// The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  final String protectionLevel;

  /// Creates a new [GetCryptoKeysKeyVersionTemplate].
  /// [algorithm] The algorithm to use when creating a version based on this template.
  /// [protectionLevel] The protection level to use when creating a version based on this template. Possible values include "SOFTWARE", "HSM", "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
  GetCryptoKeysKeyVersionTemplate({
    required this.algorithm,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['protectionLevel'] = protectionLevel;
    return map;
  }

  factory GetCryptoKeysKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysKeyVersionTemplate(
      algorithm: map['algorithm'] as String,
      protectionLevel: map['protectionLevel'] as String,
    );
  }
}
